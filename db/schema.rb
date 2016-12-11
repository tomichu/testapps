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

ActiveRecord::Schema.define(version: 20161211133812) do

  create_table "exams", force: :cascade do |t|
    t.string   "student_name"
    t.integer  "english_score_16_1"
    t.float    "english_dev_16_1"
    t.integer  "english_score_16_2"
    t.float    "english_dev_16_2"
    t.integer  "english_score_16_3"
    t.float    "english_dev_16_3"
    t.integer  "english_score_16_4"
    t.float    "english_dev_16_4"
    t.integer  "math1_score_16_1"
    t.float    "math1_dev_16_1"
    t.integer  "math1_score_16_2"
    t.float    "math1_dev_16_2"
    t.integer  "math1_score_16_3"
    t.float    "math1_dev_16_3"
    t.integer  "math1_score_16_4"
    t.float    "math1_dev_16_4"
    t.integer  "math2_score_16_1"
    t.float    "math2_dev_16_1"
    t.integer  "math2_score_16_2"
    t.float    "math2_dev_16_2"
    t.integer  "math2_score_16_3"
    t.float    "math2_dev_16_3"
    t.integer  "math2_score_16_4"
    t.float    "math2_dev_16_4"
    t.integer  "genbun_score_16_1"
    t.float    "genbun_dev_16_1"
    t.integer  "genbun_score_16_2"
    t.float    "genbun_dev_16_2"
    t.integer  "genbun_score_16_3"
    t.float    "genbun_dev_16_3"
    t.integer  "kobun_score_16_4"
    t.float    "kobun_dev_16_4"
    t.integer  "kobun_score_16_1"
    t.float    "kobun_dev_16_1"
    t.integer  "kobun_score_16_2"
    t.float    "kobun_dev_16_2"
    t.integer  "kobun_score_16_3"
    t.float    "kobun_dev_16_3"
    t.integer  "kanbun_score_16_1"
    t.float    "kanbun_dev_16_1"
    t.integer  "kanbun_score_16_2"
    t.float    "kanbun_dev_16_2"
    t.integer  "kanbun_score_16_3"
    t.float    "kanbun_dev_16_3"
    t.integer  "kanbun_score_16_4"
    t.float    "kanbun_dev_16_4"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "necessary_study_times", force: :cascade do |t|
    t.string   "title"
    t.integer  "english_ct"
    t.integer  "english_lec"
    t.integer  "math_ct"
    t.integer  "math_lec"
    t.integer  "japanese_ct"
    t.integer  "japanese_lec"
    t.integer  "classic_ct"
    t.integer  "classic_lec"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
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
