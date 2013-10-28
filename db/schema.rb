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

ActiveRecord::Schema.define(:version => 20131028034938) do

  create_table "activity_logs", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "activity_logs", ["user_id", "created_at"], :name => "index_activity_logs_on_user_id_and_created_at"

  create_table "proposeables", :force => true do |t|
    t.string   "title"
    t.string   "content"
    t.time     "resolve_time"
    t.integer  "version_number"
    t.integer  "ruleset_id"
    t.integer  "proposeable_type_id"
    t.integer  "successor_id"
    t.integer  "proposer_id"
    t.integer  "resolver_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "proposeables", ["proposer_id", "resolver_id"], :name => "index_proposeables_on_proposer_id_and_resolver_id"
  add_index "proposeables", ["ruleset_id", "proposeable_type_id"], :name => "index_proposeables_on_ruleset_id_and_proposeable_type_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
