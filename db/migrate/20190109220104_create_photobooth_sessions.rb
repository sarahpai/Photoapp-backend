class CreatePhotoboothSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :photobooth_sessions do |t|
      t.integer :like
      t.references :photobooth_scenario_session
      t.references :photobooth_frame_session
      
      t.timestamps
    end
  end
end
