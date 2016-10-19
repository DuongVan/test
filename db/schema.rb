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

ActiveRecord::Schema.define(version: 20161012090112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "ten"
    t.string   "dia_chi"
    t.string   "tuoi"
    t.string   "nhom_mau"
    t.string   "gioi_tinh"
    t.string   "ghi_chu"
    t.string   "mota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoice_details", force: :cascade do |t|
    t.integer "invoice_id",                 null: false
    t.integer "service_id",                 null: false
    t.integer "so_luong"
    t.decimal "don_gia"
    t.decimal "thanh_tien"
    t.boolean "bh",         default: false
    t.boolean "dv",         default: false
    t.string  "loai"
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "ten"
    t.integer  "tuoi"
    t.string   "dia_chi"
    t.decimal  "tong_tien"
    t.string   "tong_tien_chu"
    t.string   "thu_ngan"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "gioi_tinh"
  end

  create_table "services", force: :cascade do |t|
    t.integer "stt",                    null: false
    t.string  "ma_dkdv",                null: false
    t.string  "ten",                    null: false
    t.decimal "gia_bh",                 null: false
    t.decimal "gia_dv",                 null: false
    t.boolean "active",  default: true
    t.text    "ghi_chu"
  end

end
