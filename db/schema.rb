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

ActiveRecord::Schema.define(version: 20140108145936) do

  create_table "albums", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "published_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "genre"
    t.integer  "artist_id"
  end

  create_table "artists", force: true do |t|
    t.string   "name"
    t.text     "biography"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features_assignments", force: true do |t|
    t.integer "album_id"
    t.integer "feature_id"
  end

  add_index "features_assignments", ["album_id"], name: "index_features_assignments_on_album_id"
  add_index "features_assignments", ["feature_id"], name: "index_features_assignments_on_feature_id"

  create_table "line_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "album_id"
    t.integer  "quantity"
    t.decimal  "price",      precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["album_id"], name: "index_line_items_on_album_id"
  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id"

  create_table "orders", force: true do |t|
    t.string   "invoice_number"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"

end
