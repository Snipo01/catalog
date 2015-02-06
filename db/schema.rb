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

ActiveRecord::Schema.define(version: 20150205001816) do

  create_table "inventarios", force: true do |t|
    t.date     "date"
    t.string   "name"
    t.string   "department"
    t.text     "description"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
  end

  create_table "purchase_catalogs", force: true do |t|
    t.string   "product_name"
    t.integer  "price"
    t.string   "picture"
    t.integer  "quantity_purchased"
    t.string   "place_of_purchase"
    t.text     "location_of_use"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
