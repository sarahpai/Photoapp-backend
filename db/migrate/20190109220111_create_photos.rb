class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.binary :photo
      t.integer :like
      t.references :user

      
      t.timestamps
    end
  end
end
