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

ActiveRecord::Schema.define(version: 20160910232056) do

  create_table "evaluate_surveys", force: :cascade do |t|
    t.integer  "survey_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "evaluate_surveys", ["survey_id"], name: "index_evaluate_surveys_on_survey_id"
  add_index "evaluate_surveys", ["user_id"], name: "index_evaluate_surveys_on_user_id"

  create_table "evaluations", force: :cascade do |t|
    t.integer  "evaluate_survey_id"
    t.integer  "response_id"
    t.integer  "quality"
    t.integer  "tone"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "evaluations", ["evaluate_survey_id"], name: "index_evaluations_on_evaluate_survey_id"
  add_index "evaluations", ["response_id"], name: "index_evaluations_on_response_id"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "questions", force: :cascade do |t|
    t.integer  "qtype"
    t.text     "content"
    t.integer  "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["survey_id"], name: "index_questions_on_survey_id"

  create_table "responses", force: :cascade do |t|
    t.text     "content"
    t.integer  "survey_id"
    t.integer  "take_survey_id"
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "responses", ["question_id"], name: "index_responses_on_question_id"
  add_index "responses", ["survey_id"], name: "index_responses_on_survey_id"
  add_index "responses", ["take_survey_id"], name: "index_responses_on_take_survey_id"
  add_index "responses", ["user_id"], name: "index_responses_on_user_id"

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "assigner_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "surveys", ["assigner_id"], name: "index_surveys_on_assigner_id"

  create_table "surveys_and_assignees", id: false, force: :cascade do |t|
    t.integer "assignee_id"
    t.integer "survey_id"
  end

  add_index "surveys_and_assignees", ["assignee_id"], name: "index_surveys_and_assignees_on_assignee_id"
  add_index "surveys_and_assignees", ["survey_id"], name: "index_surveys_and_assignees_on_survey_id"

  create_table "take_surveys", force: :cascade do |t|
    t.integer  "survey_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "take_surveys", ["survey_id"], name: "index_take_surveys_on_survey_id"
  add_index "take_surveys", ["user_id"], name: "index_take_surveys_on_user_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
