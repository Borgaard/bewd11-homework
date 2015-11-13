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

ActiveRecord::Schema.define(version: 20151109023005) do

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.datetime "release_date"
    t.string   "image_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "joined_tables", force: :cascade do |t|
    t.integer "book_id"
    t.integer "store_id"
  end

  add_index "joined_tables", ["book_id"], name: "index_joined_tables_on_book_id"
  add_index "joined_tables", ["store_id"], name: "index_joined_tables_on_store_id"

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "street"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image_url"
    t.string   "store_type"
  end

  create_table "stores_books", id: false, force: :cascade do |t|
    t.integer "store_id"
    t.integer "book_id"
  end

  add_index "stores_books", ["store_id", "book_id"], name: "index_stores_books_on_store_id_and_book_id"

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "image_url"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
