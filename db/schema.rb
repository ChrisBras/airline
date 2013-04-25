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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130425210656) do

  create_table "air_crews", :force => true do |t|
    t.string   "pilot"
    t.string   "navigator"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "aircrafts", :force => true do |t|
    t.integer  "tail_number"
    t.string   "aircraft_type"
    t.integer  "air_crew_id"
    t.integer  "fuel"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "aircrafts", ["air_crew_id"], :name => "index_aircrafts_on_air_crew_id"

  create_table "airports", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cargo_items", :force => true do |t|
    t.integer  "order_id"
    t.integer  "cargo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cargo_items", ["cargo_id"], :name => "index_cargo_items_on_cargo_id"

  create_table "cargos", :force => true do |t|
    t.integer  "weight"
    t.string   "contents"
    t.integer  "flight_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cargos", ["flight_id"], :name => "index_cargos_on_flight_id"

  create_table "flights", :force => true do |t|
    t.integer  "aircraft_id"
    t.integer  "origin_id"
    t.integer  "destination_id"
    t.datetime "departure"
    t.datetime "arrival"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "flights", ["aircraft_id"], :name => "index_flights_on_aircraft_id"
  add_index "flights", ["destination_id"], :name => "index_flights_on_destination_id"
  add_index "flights", ["origin_id"], :name => "index_flights_on_origin_id"

end
