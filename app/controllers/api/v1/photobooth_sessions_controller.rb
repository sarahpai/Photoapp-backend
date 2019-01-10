class Api::V1::PhotoboothSessionsController < ApplicationController
	before_action find_photobooth_session, only: [:update, :create]

	def index
		@photobooth_sessions = PhotoboothSession.all
		render json: @photobooth_sessions
	end
	
	def create
		@photobooth_session = PhotoboothSession.create(photobooth_session_params)
		render json: @photobooth_session
	end

	# def update
	# 	@photobooth_session = Photobooth_session.create(photobooth_session_params)
	# 	render json: @photobooth_session
	# end

	def edit

	end


	private

	def photobooth_session_params
		params.require(:photobooth_session).permit(:like, :photobooth_scenario_session_id, :photobooth_frame_session_id)
	end

	def find_photobooth_session
		@photobooth_session = PhotoboothSession.find_by(params[:id])
	end
	
end
