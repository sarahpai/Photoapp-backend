class Api::V1::PhotoboothScenarioSessionsController < ApplicationController

	before_action :find_photobooth_scenario_session, only: [:create]
	def index 
		@photobooth_scenario_sessions = PhotoboothScenarioSession.all
	end

	def create
		@photobooth_scenario_session = PhotoboothScenarioSession.create(photobooth_scenario_params)
		render json: @photobooth_scenario_session
	end
	
	private

	def photobooth_scenario_params
		params.require(:photobooth_scenario_session).permit(:scenario_mission_id, :photobooth_session_id)
	end

	def find_photobooth_scenario_session
		@photobooth_scenario_session = PhotoboothScenarioSession.find(params[:scenario_mission_id, :photobooth_session_id])
	end
end
