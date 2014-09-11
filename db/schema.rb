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

ActiveRecord::Schema.define(version: 20140911212305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "house_accounts", force: true do |t|
    t.integer  "houseAccountId"
    t.string   "accountName"
    t.integer  "buildingNumber"
    t.string   "addressLine1"
    t.string   "addressLine2"
    t.string   "county"
    t.string   "country"
    t.integer  "tenantId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "superusers", force: true do |t|
    t.string   "username_s"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenants", force: true do |t|
    t.integer  "tenantId"
    t.integer  "houseAccountId"
    t.string   "firstName"
    t.string   "lastName"
    t.integer  "age"
    t.boolean  "accountOwner"
    t.boolean  "billPayer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
