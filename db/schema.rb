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

ActiveRecord::Schema.define(version: 20140529211317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carrier_destinations", force: true do |t|
    t.integer  "destination_id"
    t.integer  "carrier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carrier_destinations", ["carrier_id"], name: "index_carrier_destinations_on_carrier_id", using: :btree
  add_index "carrier_destinations", ["destination_id"], name: "index_carrier_destinations_on_destination_id", using: :btree

  create_table "carriers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: true do |t|
    t.integer  "destination_id"
    t.integer  "carrier_id"
    t.boolean  "sn"
    t.boolean  "m"
    t.boolean  "t"
    t.boolean  "w"
    t.boolean  "r"
    t.boolean  "f"
    t.boolean  "sa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "days", ["carrier_id"], name: "index_days_on_carrier_id", using: :btree
  add_index "days", ["destination_id"], name: "index_days_on_destination_id", using: :btree

  create_table "destinations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "origins", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
