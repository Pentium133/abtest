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

ActiveRecord::Schema[7.2].define(version: 2024_11_20_102020) do
  create_table "device_experiment_options", force: :cascade do |t|
    t.integer "experement_option_id"
    t.integer "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "experement_id", null: false
  end

  create_table "experement_options", force: :cascade do |t|
    t.integer "experement_id"
    t.string "option"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_devices", force: :cascade do |t|
    t.string "device_id"
    t.datetime "first_request_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
