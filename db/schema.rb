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

ActiveRecord::Schema.define(version: 2022_07_25_064845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title", null: false
    t.integer "mode", limit: 2, default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.integer "counts", default: 0, null: false
    t.string "results"
  end

  create_table "gambles", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.integer "total_amount", null: false
    t.integer "people_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_gambles_on_event_id", unique: true
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id", "user_id"], name: "index_rooms_on_event_id_and_user_id", unique: true
    t.index ["user_id"], name: "index_rooms_on_user_id"
  end

  create_table "user_payments", force: :cascade do |t|
    t.integer "payment_amount"
    t.bigint "user_id", null: false
    t.bigint "gamble_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gamble_id"], name: "index_user_payments_on_gamble_id"
    t.index ["user_id", "gamble_id"], name: "index_user_payments_on_user_id_and_gamble_id", unique: true
    t.index ["user_id"], name: "index_user_payments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "picture_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "gambles", "events"
  add_foreign_key "rooms", "events"
  add_foreign_key "rooms", "users"
  add_foreign_key "user_payments", "gambles"
  add_foreign_key "user_payments", "users"
end
