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

ActiveRecord::Schema.define(:version => 20141102154631) do

  create_table "chinese_words", :force => true do |t|
    t.string   "chinese_meaning"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "pronunciation"
  end

  create_table "english_words", :force => true do |t|
    t.string   "english_meaning"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "example_sentences", :force => true do |t|
    t.string   "english_sentence"
    t.string   "chinese_sentence"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "histories", :force => true do |t|
    t.integer  "users_id"
    t.integer  "meanings_id"
    t.integer  "frequency"
    t.string   "url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "meanings", :force => true do |t|
    t.integer  "chinese_words_id"
    t.integer  "english_words_id"
    t.string   "word_property"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "word_category_id"
  end

  create_table "meanings_example_sentences", :force => true do |t|
    t.integer  "meanings_id"
    t.integer  "example_sentences_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.integer  "if_translate"
    t.string   "translate_categories"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "word_categories", :force => true do |t|
    t.string   "category_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
