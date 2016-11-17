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

ActiveRecord::Schema.define(version: 20161113124035) do

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_memos", force: :cascade do |t|
    t.string   "student_name"
    t.integer  "ennea"
    t.integer  "ct_times"
    t.string   "going_school"
    t.string   "grade"
    t.string   "preferred_school"
    t.string   "subject"
    t.string   "textbook"
    t.integer  "textbook_number"
    t.text     "record"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.boolean  "done",       default: false
    t.integer  "project_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  create_table "winters", force: :cascade do |t|
    t.string   "student_name"
    t.integer  "mon"
    t.integer  "tue"
    t.integer  "wed"
    t.integer  "thr"
    t.integer  "fri"
    t.integer  "sat"
    t.integer  "sun"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
