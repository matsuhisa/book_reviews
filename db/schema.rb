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

ActiveRecord::Schema.define(version: 20160814154116) do

  create_table "books", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description"
    t.string   "author"
    t.string   "asin",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title",                     null: false
    t.text     "description"
    t.date     "completion_at",             null: false
    t.integer  "user_id",                   null: false
    t.integer  "book_id",                   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.datetime "deleted_at"
    t.integer  "state",         default: 1, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "login_id",                   null: false
    t.string   "nickname",                   null: false
    t.string   "user_image_url"
    t.text     "comment"
    t.integer  "authorization",  default: 1, null: false
    t.integer  "enabled",        default: 1, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
