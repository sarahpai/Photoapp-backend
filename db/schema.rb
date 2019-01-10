# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_09_220150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "frames", force: :cascade do |t|
    t.string "frame_horizontal"
    t.string "frame_vertical"
    t.string "frame_gif"
    t.bigint "photobooth_frame_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photobooth_frame_session_id"], name: "index_frames_on_photobooth_frame_session_id"
  end

  create_table "photobooth_frame_sessions", force: :cascade do |t|
    t.bigint "frame_id"
    t.boolean "frame_selected"
    t.bigint "photobooth_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["frame_id"], name: "index_photobooth_frame_sessions_on_frame_id"
    t.index ["photobooth_session_id"], name: "index_photobooth_frame_sessions_on_photobooth_session_id"
  end

  create_table "photobooth_scenario_sessions", force: :cascade do |t|
    t.bigint "scenario_mission_id"
    t.bigint "photobooth_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photobooth_session_id"], name: "index_photobooth_scenario_sessions_on_photobooth_session_id"
    t.index ["scenario_mission_id"], name: "index_photobooth_scenario_sessions_on_scenario_mission_id"
  end

  create_table "photobooth_sessions", force: :cascade do |t|
    t.integer "like"
    t.bigint "photobooth_scenario_session_id"
    t.bigint "photobooth_frame_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photobooth_frame_session_id"], name: "index_photobooth_sessions_on_photobooth_frame_session_id"
    t.index ["photobooth_scenario_session_id"], name: "index_photobooth_sessions_on_photobooth_scenario_session_id"
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "photobooth_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photobooth_session_id"], name: "index_photos_on_photobooth_session_id"
  end

  create_table "scenario_missions", force: :cascade do |t|
    t.string "mission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.bigint "photobooth_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photobooth_session_id"], name: "index_users_on_photobooth_session_id"
  end

end
