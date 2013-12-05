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

ActiveRecord::Schema.define(version: 20131205224246) do

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

  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "matches", force: true do |t|
    t.integer  "character1_id"
    t.integer  "character2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["character1_id"], name: "index_matches_on_character1_id", using: :btree
  add_index "matches", ["character2_id"], name: "index_matches_on_character2_id", using: :btree

  create_table "payments", force: true do |t|
    t.integer  "subscription_id"
    t.integer  "amount_in_cents"
    t.datetime "paid_at"
  end

  create_table "roleplays", force: true do |t|
    t.text     "message"
    t.integer  "match_id"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roleplays", ["character_id"], name: "index_roleplays_on_character_id", using: :btree
  add_index "roleplays", ["match_id"], name: "index_roleplays_on_match_id", using: :btree

  create_table "subscriptions", force: true do |t|
    t.integer "user_id"
    t.date    "start_date"
    t.date    "cancel_date"
    t.date    "next_payment_date"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "subscribed"
    t.string   "card_token"
    t.string   "card_info"
    t.string   "name_on_card"
    t.integer  "expiration_month"
    t.integer  "expiration_year"
  end

end
