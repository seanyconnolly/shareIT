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

ActiveRecord::Schema.define(version: 20140913082648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: true do |t|
    t.string   "name"
    t.string   "account_number"
    t.integer  "frequency"
    t.string   "house_account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "house_accounts", force: true do |t|
    t.string   "name"
    t.integer  "building_number"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "county"
    t.string   "country"
    t.integer  "tenant_Id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenants", force: true do |t|
    t.integer  "house_accountId"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.boolean  "account_owner"
    t.boolean  "bill_payer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
