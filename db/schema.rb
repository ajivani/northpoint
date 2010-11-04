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

ActiveRecord::Schema.define(:version => 20101104183030) do

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "sku"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "requests", :force => true do |t|
    t.string   "current_customer"
    t.string   "company_name"
    t.string   "customer_name"
    t.string   "job_title"
    t.string   "phone_number"
    t.string   "email"
    t.string   "city"
    t.string   "province_or_state"
    t.text     "quote_details"
    t.text     "estimated_quantity_per_order"
    t.text     "estimated_quantity_per_annum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
