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

ActiveRecord::Schema.define(version: 20200423201024) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devices", force: :cascade do |t|
    t.string "uuid"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensor_readings", force: :cascade do |t|
    t.integer "sensorvalue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sensor_id"
    t.index ["sensor_id"], name: "index_sensor_readings_on_sensor_id"
  end

  create_table "sensor_types", force: :cascade do |t|
    t.string "name"
    t.string "unit"
    t.integer "pow10multi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensors", force: :cascade do |t|
    t.string "uuid"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "device_id"
    t.bigint "sensor_type_id"
    t.index ["device_id"], name: "index_sensors_on_device_id"
    t.index ["sensor_type_id"], name: "index_sensors_on_sensor_type_id"
  end

  add_foreign_key "sensor_readings", "sensors"
  add_foreign_key "sensors", "devices"
  add_foreign_key "sensors", "sensor_types"
end
