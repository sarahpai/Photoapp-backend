# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
Frame.destroy_all

frames = Frame.create(frame_horizontal: "http://i63.tinypic.com/20a58ww.jpg", frame_vertical: "http://i64.tinypic.com/24edk3q.jpg", frame_gif: "http://i67.tinypic.com/21mbu2o.png", photobooth_frame_session_id: nil)

puts "all seeded"