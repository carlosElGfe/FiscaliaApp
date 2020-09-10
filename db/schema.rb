# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_07_012311) do
  create_table "crime_thiefs", force: :cascade do |t|
    t.integer "crime_id", null: false
    t.integer "thief_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crime_id"], name: "index_crime_thiefs_on_crime_id"
    t.index ["thief_id"], name: "index_crime_thiefs_on_thief_id"
  end

  create_table "crimes", force: :cascade do |t|
    t.string "title"
    t.string "labels"
    t.string "place"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "thiefs", force: :cascade do |t|
    t.string "name"
    t.string "rut"
    t.string "tags"
    t.string "alias_list"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "crime_thiefs", "crimes"
  add_foreign_key "crime_thiefs", "thiefs"
end
