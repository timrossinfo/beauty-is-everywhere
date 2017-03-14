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

ActiveRecord::Schema.define(version: 20170314103828) do

  create_table "episodes", force: :cascade do |t|
    t.string   "name"
    t.string   "colours"
    t.integer  "happy_little_trees"
    t.boolean  "cabin"
    t.string   "river_size"
    t.integer  "snowy_mountains"
    t.integer  "critters"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "series_id"
    t.index ["series_id"], name: "index_episodes_on_series_id"
  end

  create_table "series", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
