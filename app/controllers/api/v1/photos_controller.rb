class Api::V1::PhotosController < ApplicationController
	before_action :find_photo, only: [:show]

	def index
		@photos = Photo.all
		render json: @photos
	end

	def create
		@photo = Photo.create(photo_params)
		if @photo.valid? 
		render json: @photo, status: :ok
		else
		render json: @photo.errors.full_messages, status: :not_acceptable
		end
	end

	def prepare_json_image(file)
		json = {}
		json["filename"] = file.original_filename
		json["content_type"] = file.content_type
		json["data"] = Base64.encode64(File.read(file.path))
		json
	end

	def show 
		render json: @photos
	end
	private

	def photo_params
		params.require(:photo).permit(:photo, :like, :user_id)
	end

	def find_photo
		@photo = Photo.find(params[:id])
	end
end
