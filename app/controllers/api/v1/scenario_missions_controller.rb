class Api::V1::ScenarioMissionsController < ApplicationController

	before_action :find_scenario_mission, only: [:create]
	def index
		@scenario_missions = ScenarioMission.all
		render json: @scenario_missions
	end

	def create 
		@scenario_mission = ScenarioMission.create(scenario_missions_params)
		render json: @scenario_mission
	end


	private

	def scenario_missions_params
		params.require(:scenario_mission).permit(:mission)
	end

	def find_scenario_mission
		@scenario_mission = ScenarioMission.find(params[:mission])
	end
end
