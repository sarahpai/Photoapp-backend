class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :photobooth_session
      
      t.timestamps
    end
  end
end
