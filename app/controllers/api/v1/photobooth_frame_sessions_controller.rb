class Api::V1::PhotoboothFrameSessionsController < ApplicationController
	before_action :find_photobooth_frame_session, only: [:index, :create]
	def index 
		@photobooth_frame_sessions = PhotoboothFrameSession.all
		render json: @photobooth_frame_sessions
	end

	def create
		@photobooth_frame_session = PhotoboothFrameSession.create(photobooth_frame_session_params)
		render json: @photobooth_frame_session
	end

	private

	def photobooth_frame_session_params
		params.require(:photobooth_frame_session).permit(:frame_selected, :frame_id)
	end

	def find_photobooth_frame_session
		@photobooth_frame_session = PhotoboothFrameSession.find(params[:frame_selected, :frame_id])
	end

end
