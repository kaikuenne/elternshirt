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

ActiveRecord::Schema.define(version: 2018_09_08_174617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkouts", force: :cascade do |t|
    t.string "id_encrypted"
    t.bigint "user_id"
    t.bigint "tshirt_id"
    t.bigint "price_cents"
    t.string "picture_front"
    t.string "picture_back"
    t.string "status"
    t.jsonb "payment"
    t.index ["tshirt_id"], name: "index_checkouts_on_tshirt_id"
    t.index ["user_id"], name: "index_checkouts_on_user_id"
  end

  create_table "printfuls", force: :cascade do |t|
    t.string "product"
    t.string "color"
    t.string "size"
    t.integer "variant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tshirts", force: :cascade do |t|
    t.string "gender"
    t.string "child_name"
    t.bigint "user_id"
    t.date "birth_date"
    t.integer "printful_variant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
    t.string "back1"
    t.string "back2"
    t.string "back3"
    t.string "size"
    t.index ["user_id"], name: "index_tshirts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.string "name"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state_code"
    t.string "country_code"
    t.string "zip"
    t.string "stripeid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "checkouts", "tshirts"
  add_foreign_key "checkouts", "users"
  add_foreign_key "tshirts", "users"
end
