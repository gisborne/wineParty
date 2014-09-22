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

ActiveRecord::Schema.define(:version => 20121116091721) do

  create_table "descriptions", :force => true do |t|
    t.string "description"
  end

  create_table "descriptions_reviews", :force => true do |t|
    t.integer "review_id"
    t.integer "description_id"
  end

  create_table "reviewers", :force => true do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
  end

  create_table "reviews", :force => true do |t|
    t.integer "subject_id"
    t.integer "reviewer_id"
    t.integer "rating"
    t.float   "price"
  end

  create_table "reviews_varietals", :force => true do |t|
    t.integer "review_id"
    t.integer "varietal_id"
  end

  create_table "subjects", :force => true do |t|
    t.string  "name"
    t.integer "tag_num"
  end

  create_table "varietals", :force => true do |t|
    t.string "varietal"
  end

end
