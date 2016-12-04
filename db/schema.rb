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

ActiveRecord::Schema.define(version: 20161204021739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "doses", force: :cascade do |t|
    t.integer  "kind"
    t.string   "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicinal_ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "rut"
    t.string   "name"
    t.string   "business_name"
    t.string   "draft"
    t.string   "address"
    t.string   "phone_one"
    t.string   "phone_two"
    t.string   "email"
    t.string   "web"
    t.string   "kind"
    t.string   "observation"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "turns", force: :cascade do |t|
    t.datetime "start"
    t.datetime "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end