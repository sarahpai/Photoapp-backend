class CreateFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :frames do |t|
      t.string :frame_horizontal
      t.string :frame_vertical
      t.string :frame_gif
      t.references :photobooth_frame_session

      t.timestamps
    end
  end
end
