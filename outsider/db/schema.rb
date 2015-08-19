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

ActiveRecord::Schema.define(version: 20150819034511) do

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "comment_id"
    t.integer  "video"
    t.string   "owner"
    t.text     "description"
  end

  add_index "comments", ["video"], name: "index_comments_on_video"

  create_table "sports", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.text     "description"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "password"
    t.boolean  "private"
    t.string   "followers"
    t.string   "following"
    t.string   "alias"
  end

  add_index "users", ["alias"], name: "index_users_on_alias"

  create_table "videos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "video_id"
    t.string   "sport"
    t.string   "owner"
    t.string   "title"
    t.float    "points"
    t.integer  "views"
  end

  add_index "videos", ["owner"], name: "index_videos_on_owner"
  add_index "videos", ["sport"], name: "index_videos_on_sport"

end
