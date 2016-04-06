# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160403162618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plant_spots", force: :cascade do |t|
    t.integer  "x_position"
    t.integer  "plants_container_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "plant_spots", ["plants_container_id"], name: "index_plant_spots_on_plants_container_id", using: :btree

  create_table "plants", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.integer  "plant_spot_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "plants", ["plant_spot_id"], name: "index_plants_on_plant_spot_id", using: :btree

  create_table "plants_containers", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "plant_spots", "plants_containers"
  add_foreign_key "plants", "plant_spots"
end
