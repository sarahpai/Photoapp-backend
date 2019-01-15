class FrameSerializer < ActiveModel::Serializer
	attributes :id, :frame_horizontal, :frame_vertical, :frame_gif, :photobooth_frame_session_id
	# pass the id if we want to do nested routing post request
	# has_many :photobooth_session
  end