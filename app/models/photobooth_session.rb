class PhotoboothSession < ApplicationRecord
	belongs_to :photobooth_scenario_session
	belongs_to :photobooth_frame_session
	
end
