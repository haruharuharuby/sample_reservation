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

ActiveRecord::Schema.define(version: 20170727044634) do

  create_table "admins", primary_key: ["id", "loginid"], force: :cascade do |t|
    t.integer "id", null: false
    t.integer "loginid", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["id", "loginid"], name: "sqlite_autoindex_admins_1", unique: true
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "m_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
  end

  create_table "facilities", primary_key: ["id", "facilityid"], force: :cascade do |t|
    t.integer "id", null: false
    t.integer "facilityid", null: false
    t.string "facilityname", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id", "facilityid"], name: "sqlite_autoindex_facilities_1", unique: true
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "tel"
    t.string "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
