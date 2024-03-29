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

ActiveRecord::Schema.define(:version => 20121005204849) do

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "membership_number"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "product_variations", :force => true do |t|
    t.integer  "product_id"
    t.string   "name"
    t.decimal  "price",      :precision => 7, :scale => 2
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.text     "properties"
  end

  add_index "product_variations", ["product_id"], :name => "index_product_variations_on_product_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "released_at"
    t.string   "category"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
