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

ActiveRecord::Schema.define(version: 20180903170738) do

  create_table "reports", force: :cascade do |t|
    t.date     "starting_date"
    t.date     "ending_date"
    t.integer  "starting_index",           limit: 30
    t.integer  "ending_index"
    t.integer  "power_consumption"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "ending_index_second"
    t.integer  "pdl_id",                   limit: 30
    t.integer  "pdl_id_second",            limit: 30
    t.integer  "starting_index_second",    limit: 30
    t.integer  "power_consumption_second"
    t.date     "starting_date_second"
    t.date     "ending_date_second"
  end

end
