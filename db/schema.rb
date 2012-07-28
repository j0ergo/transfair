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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120727180949) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "phone_number"
    t.string   "company"
    t.string   "position"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "currency"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "educations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fair_wages", :force => true do |t|
    t.date     "date"
    t.decimal  "amount",     :precision => 10, :scale => 0
    t.integer  "country_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "fair_wages", ["country_id"], :name => "index_fair_wages_on_country_id"

  create_table "job_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "job_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "deadline_client"
    t.datetime "deadline_intern"
    t.integer  "job_type_id"
    t.integer  "job_status_id"
    t.boolean  "client_paid"
    t.integer  "rating"
    t.text     "rating_text"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "jobs", ["client_id"], :name => "index_jobs_on_client_id"
  add_index "jobs", ["job_status_id"], :name => "index_jobs_on_job_status_id"
  add_index "jobs", ["job_type_id"], :name => "index_jobs_on_job_type_id"

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "new_view", :id => false, :force => true do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
  end

  create_table "service_partners", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.integer  "birth_year"
    t.string   "phone_number"
    t.integer  "country_id"
    t.string   "city"
    t.boolean  "is_urban"
    t.integer  "education_id"
    t.text     "education_background"
    t.text     "work_experience"
    t.text     "internet_access"
    t.text     "internet_use"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "service_partners", ["country_id"], :name => "index_service_partners_on_country_id"
  add_index "service_partners", ["education_id"], :name => "index_service_partners_on_education_id"

end
