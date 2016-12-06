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

ActiveRecord::Schema.define(version: 20161206160212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "batches", force: :cascade do |t|
    t.date     "batch_start"
    t.date     "batch_end"
    t.string   "name"
    t.integer  "program_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["program_id"], name: "index_batches_on_program_id", using: :btree
  end

  create_table "bloomers", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
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
    t.float    "latitude"
    t.float    "longitude"
    t.index ["user_id"], name: "index_bloomers_on_user_id", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "candidature_id"
    t.integer  "bloomer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "status"
    t.index ["bloomer_id"], name: "index_bookings_on_bloomer_id", using: :btree
    t.index ["candidature_id"], name: "index_bookings_on_candidature_id", using: :btree
  end

  create_table "candidatures", force: :cascade do |t|
    t.string   "status"
    t.integer  "startup_id"
    t.integer  "program_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "team"
    t.text     "your_problem"
    t.text     "your_solution"
    t.text     "your_market"
    t.integer  "phone_number"
    t.text     "question_incubation"
    t.index ["program_id"], name: "index_candidatures_on_program_id", using: :btree
    t.index ["startup_id"], name: "index_candidatures_on_startup_id", using: :btree
  end

  create_table "favorites", force: :cascade do |t|
    t.boolean  "hidden"
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "bloomer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bloomer_id"], name: "index_favorites_on_bloomer_id", using: :btree
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "incubations", force: :cascade do |t|
    t.integer  "startup_id"
    t.integer  "batch_id"
    t.string   "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batch_id"], name: "index_incubations_on_batch_id", using: :btree
    t.index ["startup_id"], name: "index_incubations_on_startup_id", using: :btree
  end

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.string   "short_description"
    t.text     "description"
    t.string   "duration"
    t.integer  "price"
    t.boolean  "equity"
    t.integer  "bloomer_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.date     "candidature_open"
    t.date     "candidature_close"
    t.text     "individual_coaching"
    t.text     "collective_coachin"
    t.text     "ecosystem"
    t.text     "advantages"
    t.text     "selection_criterias"
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
    t.boolean  "admin"
    t.boolean  "startup_admin"
    t.boolean  "bloomer_admin"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "linkedin_picture_url"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "batches", "programs"
  add_foreign_key "bloomers", "users"
  add_foreign_key "bookings", "bloomers"
  add_foreign_key "bookings", "candidatures"
  add_foreign_key "candidatures", "programs"
  add_foreign_key "candidatures", "startups"
  add_foreign_key "favorites", "bloomers"
  add_foreign_key "favorites", "users"
  add_foreign_key "incubations", "batches"
  add_foreign_key "incubations", "startups"
  add_foreign_key "programs", "bloomers"
  add_foreign_key "reviews", "bloomers"
  add_foreign_key "reviews", "startups"
  add_foreign_key "startups", "users"
end
