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

ActiveRecord::Schema.define(version: 20140417035606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendaces_children", id: false, force: true do |t|
    t.integer "attendace_id", null: false
    t.integer "child_id",     null: false
  end

  create_table "attendances", force: true do |t|
    t.datetime "time_in"
    t.datetime "time_out"
    t.string   "child_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
  end

  create_table "child_schedules", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "children", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.time     "time_in"
    t.time     "time_out"
    t.string   "birthday"
  end

  create_table "children_schedules", id: false, force: true do |t|
    t.integer "child_id",    null: false
    t.integer "schedule_id", null: false
  end

  add_index "children_schedules", ["child_id", "schedule_id"], name: "index_children_schedules_on_child_id_and_schedule_id", using: :btree
  add_index "children_schedules", ["schedule_id", "child_id"], name: "index_children_schedules_on_schedule_id_and_child_id", using: :btree

  create_table "parents", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "address"
    t.integer  "phone",      limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
  end

  create_table "schedules", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
