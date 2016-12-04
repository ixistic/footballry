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

ActiveRecord::Schema.define(version: 20161204074506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "post_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "created_by_id"
    t.integer  "last_edited_by_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["created_by_id"], name: "index_post_types_on_created_by_id", using: :btree
    t.index ["last_edited_by_id"], name: "index_post_types_on_last_edited_by_id", using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "topic_id"
    t.integer  "post_type_id"
    t.string   "status"
    t.integer  "created_by_id"
    t.integer  "last_edited_by_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["created_by_id"], name: "index_posts_on_created_by_id", using: :btree
    t.index ["last_edited_by_id"], name: "index_posts_on_last_edited_by_id", using: :btree
    t.index ["post_type_id"], name: "index_posts_on_post_type_id", using: :btree
    t.index ["topic_id"], name: "index_posts_on_topic_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "created_by_id"
    t.integer  "last_edited_by_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["created_by_id"], name: "index_topics_on_created_by_id", using: :btree
    t.index ["last_edited_by_id"], name: "index_topics_on_last_edited_by_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  end

  add_foreign_key "posts", "post_types"
  add_foreign_key "posts", "topics"
  add_foreign_key "users", "roles"
end
