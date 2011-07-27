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

ActiveRecord::Schema.define(:version => 20110727195327) do

  create_table "caller_queues", :force => true do |t|
    t.integer  "caller_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "callers", :force => true do |t|
    t.integer  "phone"
    t.integer  "device"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chats", :force => true do |t|
    t.integer  "caller1"
    t.integer  "caller2"
    t.integer  "start_time"
    t.integer  "end_time"
    t.integer  "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
