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

ActiveRecord::Schema.define(version: 20141025001550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "schools", force: true do |t|
    t.string  "name"
    t.date    "due_date"
    t.string  "city"
    t.string  "state"
    t.integer "board_pass_rate"
    t.string  "image_url"
  end

  create_table "tasks", force: true do |t|
    t.string  "title"
    t.integer "school_id"
    t.string  "url"
    t.text    "notes"
    t.boolean "completed", default: false
  end

  add_index "tasks", ["completed"], name: "index_tasks_on_completed", using: :btree
  add_index "tasks", ["school_id"], name: "index_tasks_on_school_id", using: :btree

end
