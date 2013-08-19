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

ActiveRecord::Schema.define(version: 20130808095017) do

  create_table "companies", force: true do |t|
    t.string   "sn"
    t.string   "name"
    t.string   "telphone"
    t.string   "fax"
    t.string   "email"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "driver_meals", force: true do |t|
    t.string   "dealer"
    t.string   "carSn"
    t.integer  "mealAllowance"
    t.string   "driver_id"
    t.integer  "party_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: true do |t|
    t.date     "date"
    t.string   "name"
    t.integer  "main_company_id"
    t.integer  "secondary_company_id"
    t.integer  "connector"
    t.integer  "biller"
    t.time     "arrive"
    t.time     "leave"
    t.time     "arriveActial"
    t.time     "leaveActial"
    t.integer  "fullTicket"
    t.integer  "halfTicket"
    t.integer  "fullTicketG"
    t.integer  "halfTicketG"
    t.integer  "fullTicketFree"
    t.integer  "halfTicketFree"
    t.integer  "fullTicketGFree"
    t.integer  "halfTicketGFree"
    t.integer  "fullTicketDIY"
    t.integer  "halfTicketDIY"
    t.integer  "totalTicketPeople"
    t.integer  "totalPeople"
    t.integer  "bigBus"
    t.integer  "middleBus"
    t.integer  "selfDrive"
    t.integer  "payTotal"
    t.string   "payType"
    t.string   "payMan"
    t.string   "specialSale"
    t.string   "project"
    t.string   "commission"
    t.string   "commissionAgent"
    t.integer  "commissionAmount"
    t.boolean  "isHandReceipt"
    t.boolean  "isGetTicket"
    t.boolean  "isPaid"
    t.boolean  "isGetCommission"
    t.integer  "mealAllowanceTotal"
    t.string   "meal"
    t.date     "reserveDate"
    t.text     "memo"
    t.integer  "entranceEmp_id"
    t.integer  "recordEmp_id"
    t.integer  "modifyEmp_id"
    t.string   "guide"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "sn"
    t.string   "photo"
    t.string   "idCard"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rents", force: true do |t|
    t.string   "place"
    t.time     "rentStart"
    t.time     "rentEnd"
    t.boolean  "fullday"
    t.integer  "party_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_surveys", force: true do |t|
    t.date     "date"
    t.integer  "total"
    t.integer  "freeNumber"
    t.integer  "halfNumber"
    t.integer  "person_id"
    t.integer  "party_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "static_numbers", force: true do |t|
    t.date     "date"
    t.string   "title"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
