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

ActiveRecord::Schema.define(:version => 20120111063629) do

  create_table "entries", :force => true do |t|
    t.date     "date"
    t.integer  "usuario_id"
    t.string   "goal"
    t.text     "give"
    t.string   "grateful_one"
    t.string   "grateful_two"
    t.string   "grateful_three"
    t.string   "grateful_four"
    t.string   "grateful_five"
    t.string   "grateful_six"
    t.string   "grateful_seven"
    t.string   "grateful_eight"
    t.string   "grateful_nine"
    t.string   "grateful_ten"
    t.text     "thanks"
    t.string   "happy"
    t.string   "evaluation"
    t.string   "improvement"
    t.string   "happier"
    t.string   "still_pending"
    t.string   "greeting"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "name"
    t.string   "twitter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
