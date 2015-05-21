# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150521072436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "contact_informations", force: :cascade do |t|
    t.string   "line_1"
    t.string   "line_2"
    t.string   "pincode"
    t.string   "city"
    t.string   "state"
    t.string   "contact_number"
    t.string   "email"
    t.integer  "worker_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "verification_documents", force: :cascade do |t|
    t.string   "document_type"
    t.integer  "worker_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "verification_documents", ["worker_id"], name: "index_verification_documents_on_worker_id", using: :btree

  create_table "workers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "sirname"
    t.integer  "age"
    t.string   "educational_background"
    t.string   "work_background"
    t.string   "native_city"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "expertise"
    t.string   "profile_picture_file_name"
    t.string   "profile_picture_content_type"
    t.integer  "profile_picture_file_size"
    t.datetime "profile_picture_updated_at"
  end

end
