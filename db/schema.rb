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

ActiveRecord::Schema.define(version: 20161112171026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rods", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price_painted"
    t.decimal  "price_plated"
    t.string   "photo"
    t.string   "model"
    t.string   "rod_length"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "color"
    t.decimal  "retail"
    t.string   "finish_technique"
    t.string   "factory"
    t.decimal  "fob"
    t.decimal  "landed"
    t.decimal  "amg_sell"
    t.decimal  "total_fob"
    t.decimal  "total_landed"
    t.decimal  "total_amg_sell"
    t.decimal  "total_retail_sales"
    t.decimal  "amg_margin"
    t.decimal  "retail_margin"
    t.integer  "first_shipment_quantity"
    t.integer  "total_wave_2_quantity"
    t.integer  "forty_hq_container_max"
    t.string   "brand"
    t.string   "status"
    t.string   "port"
    t.date     "its_inspection_date"
    t.date     "etd"
    t.date     "eta_port"
    t.date     "eta_warehouse"
    t.string   "po"
    t.integer  "cartons_shipping"
    t.integer  "quantity_shipping"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
