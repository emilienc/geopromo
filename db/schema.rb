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

ActiveRecord::Schema.define(:version => 20101203064900) do

  create_table "geocodes", :force => true do |t|
    t.decimal "latitude",    :precision => 15, :scale => 12
    t.decimal "longitude",   :precision => 15, :scale => 12
    t.string  "query"
    t.string  "street"
    t.string  "locality"
    t.string  "region"
    t.string  "postal_code"
    t.string  "country"
    t.string  "precision"
  end

  add_index "geocodes", ["country"], :name => "geocodes_country_index"
  add_index "geocodes", ["latitude"], :name => "geocodes_latitude_index"
  add_index "geocodes", ["locality"], :name => "geocodes_locality_index"
  add_index "geocodes", ["longitude"], :name => "geocodes_longitude_index"
  add_index "geocodes", ["postal_code"], :name => "geocodes_postal_code_index"
  add_index "geocodes", ["precision"], :name => "geocodes_precision_index"
  add_index "geocodes", ["query"], :name => "geocodes_query_index", :unique => true
  add_index "geocodes", ["region"], :name => "geocodes_region_index"

  create_table "geocodings", :force => true do |t|
    t.integer "geocodable_id"
    t.integer "geocode_id"
    t.string  "geocodable_type"
  end

  add_index "geocodings", ["geocodable_id"], :name => "geocodings_geocodable_id_index"
  add_index "geocodings", ["geocodable_type"], :name => "geocodings_geocodable_type_index"
  add_index "geocodings", ["geocode_id"], :name => "geocodings_geocode_id_index"

  create_table "promotions", :force => true do |t|
    t.integer  "user_id"
    t.string   "description"
    t.string   "street"
    t.string   "locality"
    t.string   "region"
    t.string   "postal_code"
    t.string   "country"
    t.date     "debut"
    t.date     "fin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
