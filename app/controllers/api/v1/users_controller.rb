class Api::V1::UsersController < ApplicationController
	skip_before_action :authorized, only: [:create]

	def index
		@users = User.all
		render json: @users
	end


	def homepage
		render json: { user: UserSerializer.new(current_user()) }, status: :accepted
	end

	def show
		render json: @user, status: :ok
	end
	#POST /users
	def create
		@user = User.create!(user_params)
		if @user.valid?
			@token = encode_token(user_id: @user.id)
			render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
			# if @user.save
			# 	@user.save_attachments(user_params) if params[:user][:photo]
			# 	render json: { result: true, msg: ' The image is sucessfully uploaded!!'}, status: :created
		else
			render json: { error: 'Invalid username and password' }, status: :not_acceptable
			end
		# end
	end


	def update
		@user.update(user_params)
		if @user.save
			render json: @user, status: :accepted
		else
			render json: { errors: @note.errors.full_messages}, status: :unprocessible_entity
		end
	end


	private 

	def user_params
		params.require(:user).permit(:username, :password, :email, :full_name, :photo)
	end

	def find_user
		@user = User.find(params[:id])
	end

end

