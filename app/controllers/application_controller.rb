class ApplicationController < ActionController::API
	before_action :authorized, except: [:new, :create]
   
	def encode_token(payload) #{user_id: 1 }
	  # should store secret in env variable
	  JWT.encode(payload, ENV["jwt_secret"])
	end
   
	def auth_header
	  # { Authorization: 'Bearer <token>' }
	  request.headers['Authorization']
	end
   
	def decoded_token
	  if auth_header
		token = auth_header.split(' ')[1]
		# header: { 'Authorization': 'Bearer <token>' }
		begin
		  JWT.decode(token, ENV["jwt_secret"], true, algorithm: 'HS256')
		rescue JWT::DecodeError
		  nil
		end
	  end
	end
   
	def current_user
	  if decoded_token
		user_id = decoded_token[0]['user_id']
		@user = User.find_by(id: user_id)
	  end
	end
   
	def logged_in?
	  !!current_user
	end
   
	def authorized
	  render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
	end
  end