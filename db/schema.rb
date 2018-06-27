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

ActiveRecord::Schema.define(version: 2018_06_27_145552) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "behemoths", force: :cascade do |t|
    t.string "name"
    t.integer "location_id"
    t.index ["location_id"], name: "index_behemoths_on_location_id"
  end

  create_table "elemental_damages", force: :cascade do |t|
    t.integer "behemoth_id"
    t.integer "element_id"
    t.index ["behemoth_id"], name: "index_elemental_damages_on_behemoth_id"
    t.index ["element_id"], name: "index_elemental_damages_on_element_id"
  end

  create_table "elemental_weaknesses", force: :cascade do |t|
    t.integer "behemoth_id"
    t.integer "element_id"
    t.index ["behemoth_id"], name: "index_elemental_weaknesses_on_behemoth_id"
    t.index ["element_id"], name: "index_elemental_weaknesses_on_element_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reagents", force: :cascade do |t|
    t.string "name"
    t.string "rarity"
    t.integer "behemoth_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["behemoth_id"], name: "index_reagents_on_behemoth_id"
  end

end
