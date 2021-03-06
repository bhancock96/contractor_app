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

ActiveRecord::Schema.define(:version => 20131210071147) do

  create_table "contractors", :force => true do |t|
    t.string   "contractor_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "business_name"
    t.string   "location"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.string   "birth_date"
    t.string   "date_hired"
    t.integer  "contractor_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "expenses", :force => true do |t|
    t.string   "store"
    t.string   "expense_type"
    t.string   "amount"
    t.integer  "job_id"
    t.integer  "contractor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "images", :force => true do |t|
    t.string   "file"
    t.string   "image_type"
    t.integer  "job_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string   "customer_name"
    t.string   "customer_street_address"
    t.string   "customer_zipcode"
    t.string   "customer_phone_number"
    t.string   "customer_email"
    t.integer  "contractor_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "customer_city"
    t.string   "status"
    t.string   "notes"
    t.integer  "estimated_hours"
    t.string   "estimated_sales"
    t.integer  "booked_hours"
    t.string   "booked_sales"
    t.integer  "produced_hours"
    t.string   "produced_sales"
  end

end
