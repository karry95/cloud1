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

ActiveRecord::Schema.define(version: 2018_04_29_183605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "patient"
    t.date "date"
    t.string "time"
    t.text "details"
    t.bigint "doc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doc_id"], name: "index_appointments_on_doc_id"
  end

  create_table "apts", force: :cascade do |t|
    t.string "patient"
    t.date "date"
    t.time "time"
    t.text "details"
    t.bigint "doc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doc_id"], name: "index_apts_on_doc_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doc_appointments", force: :cascade do |t|
    t.string "patient"
    t.date "date"
    t.time "time"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "docs", force: :cascade do |t|
    t.string "patient"
    t.date "date"
    t.time "time"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "patient"
    t.date "date"
    t.string "time"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "doctorsname"
    t.integer "identification"
    t.string "clinic"
    t.string "qualification"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "details"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.datetime "publishdate"
    t.index ["patient_id"], name: "index_notes_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.integer "contact"
    t.date "date_of_birth"
    t.string "address"
    t.string "injury"
    t.string "action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "condition"
  end

  create_table "requests", force: :cascade do |t|
    t.string "department"
    t.string "patient"
    t.string "request"
    t.bigint "hospital_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_requests_on_hospital_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
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
    t.string "first_name"
    t.string "last_name"
    t.integer "doc_id"
    t.string "qualification"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "docs"
  add_foreign_key "apts", "docs"
  add_foreign_key "notes", "patients"
  add_foreign_key "requests", "hospitals"
end
