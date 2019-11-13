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

ActiveRecord::Schema.define(version: 2019_11_11_185242) do

  create_table "insurance_polices", force: :cascade do |t|
    t.string "basic"
    t.string "standard"
    t.string "premium"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "identification"
    t.string "phoneNumber"
    t.string "residenceAddress"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.boolean "truckCrane"
    t.boolean "motorCycleCrane"
    t.boolean "workshopCar"
    t.string "motorcicleWorkshop"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_vehicles", force: :cascade do |t|
    t.string "truckCrane"
    t.string "motorcycleCrane"
    t.string "workshopCar"
    t.string "motorcicleWorkshop"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "placa"
    t.string "transitlog"
    t.string "color"
    t.integer "owner_id"
    t.integer "service_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_vehicles_on_owner_id"
    t.index ["service_id"], name: "index_vehicles_on_service_id"
  end

end
