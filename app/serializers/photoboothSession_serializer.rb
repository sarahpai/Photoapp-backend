class PhotoboothSessionSerializer < ActiveModel::Serializer
	attributes :id, :like, :photobooth_scenario_session_id, :photobooth_frame_session_id

  end