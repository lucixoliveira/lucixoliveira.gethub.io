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

ActiveRecord::Schema.define(version: 0) do

  create_table "newcosts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "typeofcost_id"
    t.integer "vendor_id"
    t.string  "date"
    t.string  "value"
    t.text    "description"
  end

  add_index "newcosts", ["typeofcost_id"], name: "index_newcosts_on_typeofcost_id"
  add_index "newcosts", ["user_id"], name: "index_newcosts_on_user_id"
  add_index "newcosts", ["vendor_id"], name: "index_newcosts_on_vendor_id"

  create_table "typeofcosts", force: :cascade do |t|
    t.string  "typename"
    t.integer "vendor_id"
  end

  add_index "typeofcosts", ["vendor_id"], name: "index_typeofcosts_on_vendor_id"

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "datejoined"
    t.string "useremail"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "vendorname"
    t.string "vendorregistration"
    t.string "vendoremail"
  end

end
