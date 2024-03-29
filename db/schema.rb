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

ActiveRecord::Schema.define(:version => 20120829073001) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "banks", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "telephone"
    t.string   "fax"
    t.string   "web"
    t.string   "email"
    t.string   "index"
    t.integer  "city_id"
    t.string   "address_in_city"
    t.integer  "cash_dispenser"
    t.integer  "subsidiary"
    t.integer  "additional_office"
    t.integer  "exchange_point"
    t.date     "date_of_entering_into_the_BSR"
    t.string   "address_from_statute"
    t.string   "actual_address"
    t.float    "corresponding_account"
    t.string   "bic"
    t.string   "tin"
    t.string   "rcco"
    t.text     "account_in_rubles"
    t.text     "account_in_dollar"
    t.text     "account_in_euro"
    t.string   "cash_transfers"
    t.string   "office_hours"
    t.string   "chairman_of_the_council"
    t.string   "statute"
    t.string   "chartered_capital"
    t.string   "members_of_council"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "currencies", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exchanges", :force => true do |t|
    t.integer  "bank_id"
    t.integer  "currency_id"
    t.float    "buy"
    t.float    "sell"
    t.date     "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "versions", :force => true do |t|
    t.integer  "version"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
