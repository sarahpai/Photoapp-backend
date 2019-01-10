class Api::V1::PhotosController < ApplicationController
	before_action :find_photo, only: [:index]

	def index
		@photos = Photo.all
		render json: @photos
	end

	def create
		@photo = Photo.create(photo_params)
		render json: @photo
	end


	private

	def photo_params
		params.require(:photo).permit(:photobooth_session_id)
	end

	def find_photo
		@photo = Photo.find(params[:id])
	end
end
