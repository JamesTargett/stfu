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

ActiveRecord::Schema.define(version: 20131123234358) do

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "height"
    t.string   "weight"
    t.string   "wrestling_style"
    t.string   "finisher"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "age"
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id"

  create_table "matches", force: true do |t|
    t.integer  "character1_id"
    t.integer  "character2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["character1_id"], name: "index_matches_on_character1_id"
  add_index "matches", ["character2_id"], name: "index_matches_on_character2_id"

  create_table "roleplays", force: true do |t|
    t.string   "message"
    t.integer  "match_id"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roleplays", ["character_id"], name: "index_roleplays_on_character_id"
  add_index "roleplays", ["match_id"], name: "index_roleplays_on_match_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
