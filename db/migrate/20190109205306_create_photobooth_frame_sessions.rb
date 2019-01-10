class CreatePhotoboothFrameSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :photobooth_frame_sessions do |t|
      t.belongs_to :frame, index: true
      t.boolean :frame_selected
      t.references :photobooth_session

      t.timestamps
    end
  end
end
