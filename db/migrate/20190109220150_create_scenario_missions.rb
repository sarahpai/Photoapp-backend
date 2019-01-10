class CreateScenarioMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :scenario_missions do |t|
      t.string :mission
      
      t.timestamps
    end
  end
end
