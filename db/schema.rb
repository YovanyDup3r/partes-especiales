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

ActiveRecord::Schema.define(version: 20140619223128) do

  create_table "churches", force: true do |t|
    t.string   "name"
    t.string   "addres"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "like_special_part_user_users", force: true do |t|
    t.integer  "special_part_id"
    t.integer  "church_id"
    t.integer  "user_id"
    t.boolean  "like"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "music_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postulates", force: true do |t|
    t.integer  "user_id"
    t.integer  "church_id"
    t.integer  "music_type_id"
    t.datetime "date"
    t.string   "music_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_part_user_users", force: true do |t|
    t.integer  "special_part_user_id"
    t.integer  "special_part_id"
    t.integer  "user_id"
    t.boolean  "like"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_part_users", force: true do |t|
    t.integer  "special_part_id"
    t.integer  "user_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_parts", force: true do |t|
    t.integer  "church_id"
    t.integer  "user_id"
    t.string   "video_url"
    t.string   "audio_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "postulate_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "lastname"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
