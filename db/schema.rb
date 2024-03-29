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

ActiveRecord::Schema.define(version: 20140411191934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "water_data", force: true do |t|
    t.string   "lat"
    t.string   "long"
    t.integer  "serial"
    t.float    "vbatt"
    t.integer  "cycles"
    t.integer  "failed_cycles"
    t.integer  "downloads"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "time"
  end

  add_index "water_data", ["time"], name: "index_water_data_on_time", using: :btree

end
