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

ActiveRecord::Schema.define(version: 20160306184939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.string   "sport"
    t.datetime "date"
    t.string   "other_spot"
    t.integer  "spot_id"
    t.text     "other_riders", default: [],              array: true
    t.integer  "rider_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "photos", ["rider_id"], name: "index_photos_on_rider_id", using: :btree
  add_index "photos", ["spot_id"], name: "index_photos_on_spot_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "sport"
    t.string   "url"
    t.string   "post_type"
    t.datetime "date"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "riders", force: :cascade do |t|
    t.string   "name",                     null: false
    t.string   "alias",                    null: false
    t.string   "sport",                    null: false
    t.string   "photo_url",                null: false
    t.datetime "birthdate"
    t.text     "description"
    t.string   "nickname"
    t.string   "procedence"
    t.string   "residence"
    t.string   "stance"
    t.text     "quote"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "twitter"
    t.text     "other_spots", default: [],              array: true
    t.integer  "spot_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "riders", ["alias"], name: "index_riders_on_alias", using: :btree
  add_index "riders", ["spot_id"], name: "index_riders_on_spot_id", using: :btree

  create_table "spots", force: :cascade do |t|
    t.string   "name",                     null: false
    t.string   "alias",                    null: false
    t.string   "address",                  null: false
    t.decimal  "latitude"
    t.decimal  "longuitude"
    t.string   "url",                      null: false
    t.text     "description"
    t.text     "sports",      default: [],              array: true
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "spots", ["alias"], name: "index_spots_on_alias", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",   null: false
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", using: :btree

end
