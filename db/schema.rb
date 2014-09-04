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

ActiveRecord::Schema.define(:version => 20140904071419) do

  create_table "dictionaries", :force => true do |t|
    t.string   "word_english"
    t.string   "word_chinese"
    t.string   "word_category"
    t.integer  "word_difficulty_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "word_id"
  end

  create_table "difficulties", :force => true do |t|
    t.integer  "word_difficulty_id"
    t.string   "word_difficulty_string"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "translates", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "understands", :force => true do |t|
    t.integer  "user_id"
    t.integer  "word_id"
    t.integer  "strength"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "if_understand"
  end

  create_table "users", :force => true do |t|
    t.integer  "user_id"
    t.string   "user_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
