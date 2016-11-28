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

ActiveRecord::Schema.define(version: 20161128102340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batchs", force: :cascade do |t|
    t.date     "batch_start"
    t.date     "batch_end"
    t.integer  "startups_id"
    t.string   "name"
    t.integer  "bloomer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bloomer_id"], name: "index_batchs_on_bloomer_id", using: :btree
    t.index ["startups_id"], name: "index_batchs_on_startups_id", using: :btree
  end

  create_table "bloomers", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "country"
    t.string   "category"
    t.string   "website"
    t.string   "email"
    t.string   "address"
    t.string   "speciality"
    t.date     "date_creation"
    t.text     "description"
    t.string   "twitter_account"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_bloomers_on_user_id", using: :btree
  end

  create_table "candidatures", force: :cascade do |t|
    t.string   "status"
    t.date     "start_date"
    t.date     "preselection_date"
    t.date     "end_date"
    t.integer  "startup_id"
    t.integer  "program_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["program_id"], name: "index_candidatures_on_program_id", using: :btree
    t.index ["startup_id"], name: "index_candidatures_on_startup_id", using: :btree
  end

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.string   "short_description"
    t.text     "description"
    t.string   "duration"
    t.integer  "price"
    t.boolean  "equity"
    t.integer  "bloomer_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["bloomer_id"], name: "index_programs_on_bloomer_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "rating"
    t.integer  "bloomer_id"
    t.integer  "startup_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bloomer_id"], name: "index_reviews_on_bloomer_id", using: :btree
    t.index ["startup_id"], name: "index_reviews_on_startup_id", using: :btree
  end

  create_table "startups", force: :cascade do |t|
    t.string   "name"
    t.string   "short_description"
    t.text     "description"
    t.date     "date_creation"
    t.string   "twitter_account"
    t.string   "website"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_startups_on_user_id", using: :btree
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
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "batchs", "bloomers"
  add_foreign_key "batchs", "startups", column: "startups_id"
  add_foreign_key "bloomers", "users"
  add_foreign_key "candidatures", "programs"
  add_foreign_key "candidatures", "startups"
  add_foreign_key "programs", "bloomers"
  add_foreign_key "reviews", "bloomers"
  add_foreign_key "reviews", "startups"
  add_foreign_key "startups", "users"
end
