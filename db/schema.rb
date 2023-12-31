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

ActiveRecord::Schema[7.0].define(version: 2023_07_26_210733) do
  create_table "customers", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name", null: false
    t.date "release_date", null: false
    t.string "rate", default: "G", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "movie_id", null: false
    t.decimal "price", default: "0.0", null: false
    t.date "borrow_date", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.date "return_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_rentals_on_customer_id"
    t.index ["movie_id"], name: "index_rentals_on_movie_id"
  end

  add_foreign_key "rentals", "customers"
  add_foreign_key "rentals", "movies"
end
