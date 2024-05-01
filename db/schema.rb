# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_30_032450) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agitators", force: :cascade do |t|
    t.bigint "user_id"
    t.string "three_things", null: false
    t.string "gender", null: false
    t.string "common_name", null: false
    t.string "name", null: false
    t.string "when_he_said", null: false
    t.string "what_people_do", null: false
    t.string "treasure", null: false
    t.string "place", null: false
    t.string "where_they_go", null: false
    t.string "epic_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_agitators_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "agitators", "users"
end
