class Api::V1::FramesController < ApplicationController
	 before_action :find_frame, only: [ :show, :create]
	 
	def index
		@frames = Frame.all
		render json: @frames
	end
	def create
		@frame = Frame.create(frame_params)
		render json: @frame
	end

	# def show
	# 	if @frame
	# 		render json: @frame
	# 	else
	# 		render json: {message: 'No frames found'}, status: :not_found
	# 	end
	# end


	private 
	
	def frame_params
		params.require(:frame).permit(:frame_horizontal, :frame_vertical, :frame_gif)
	end

	def find_frame
		@frame = Frame.find(params[:id])
	end
end
