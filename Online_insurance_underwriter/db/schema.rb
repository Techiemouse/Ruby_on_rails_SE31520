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

ActiveRecord::Schema.define(version: 20131201230934) do

  create_table "claims", force: true do |t|
    t.integer  "customer_id"
    t.date     "date_of_incident"
    t.integer  "value"
    t.string   "type_of_incident"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "title"
    t.string   "forename"
    t.string   "surname"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "email"
    t.date     "date_of_birth"
    t.string   "street"
    t.string   "city"
    t.string   "county"
    t.string   "postcode"
    t.string   "current_licence"
    t.integer  "licence_period"
    t.string   "occupation"
  end

  create_table "policies", force: true do |t|
    t.integer  "customer_id"
    t.integer  "policy_excess"
    t.string   "breakdown_cover"
    t.boolean  "windscreen_repair"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "windscreen_cost"
  end

  create_table "quotes", force: true do |t|
    t.integer  "customer_id"
    t.integer  "amount"
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.integer  "customer_id"
    t.string   "vehicle_reg"
    t.integer  "annual_mileage"
    t.integer  "vehicle_value"
    t.string   "parking_location"
    t.date     "policy_start_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
