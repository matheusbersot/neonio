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

ActiveRecord::Schema.define(:version => 20141017005320) do

  create_table "cities", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "state_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "districts", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "city_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "acronym",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stores", :force => true do |t|
    t.integer  "user_id",        :null => false
    t.string   "name",           :null => false
    t.string   "cnpj",           :null => false
    t.string   "telephone1",     :null => false
    t.string   "telephone2"
    t.string   "telephone3"
    t.string   "street_address", :null => false
    t.integer  "number_address", :null => false
    t.string   "complement",     :null => false
    t.string   "zip_code",       :null => false
    t.integer  "state_id",       :null => false
    t.integer  "city_id",        :null => false
    t.integer  "district_id",    :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name",            :null => false
    t.string   "password_digest", :null => false
    t.string   "email",           :null => false
    t.integer  "store_id"
    t.integer  "profile_id",      :null => false
    t.integer  "manager_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
