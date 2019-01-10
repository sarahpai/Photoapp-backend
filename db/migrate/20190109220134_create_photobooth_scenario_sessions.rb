class CreatePhotoboothScenarioSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :photobooth_scenario_sessions do |t|
      t.belongs_to :scenario_mission, index: true
      t.references :photobooth_session
      
      t.timestamps
    end
  end
end
