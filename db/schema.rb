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

ActiveRecord::Schema[7.0].define(version: 2022_08_13_131533) do
  create_table "commands", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "modelid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "extid"
    t.string "lastname"
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "ten"
    t.string "ssn"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genieacs", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "passwd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nodeconfigs", force: :cascade do |t|
    t.string "name"
    t.integer "node_id"
    t.string "val"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nodes", force: :cascade do |t|
    t.string "extid"
    t.string "name"
    t.string "serial"
    t.string "deviceid"
    t.string "address"
    t.integer "customer_id"
    t.integer "model_id"
    t.integer "genieac_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "defval"
    t.string "description"
    t.integer "dataName"
    t.integer "dataType"
    t.string "objectName"
    t.integer "command_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
