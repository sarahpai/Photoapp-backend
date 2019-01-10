class PhotoboothScenarioSession < ApplicationRecord
	has_one :photobooth_session
	belongs_to :scenario_mission
end
