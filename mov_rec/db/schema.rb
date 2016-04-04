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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160404183407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actor_roles", force: :cascade do |t|
    t.integer  "actor_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "actor_roles", ["actor_id"], name: "index_actor_roles_on_actor_id", using: :btree
  add_index "actor_roles", ["role_id"], name: "index_actor_roles_on_role_id", using: :btree

  create_table "actors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "place_of_birth"
    t.string   "gender"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "picture"
  end

  create_table "casting_types", force: :cascade do |t|
    t.string   "cast_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string   "device_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "place_of_birth"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "picture"
  end

  create_table "directs", force: :cascade do |t|
    t.integer  "director_id"
    t.integer  "movie_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "directs", ["director_id"], name: "index_directs_on_director_id", using: :btree
  add_index "directs", ["movie_id"], name: "index_directs_on_movie_id", using: :btree

  create_table "movie_casts", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "actor_id"
    t.integer  "casting_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "movie_casts", ["actor_id"], name: "index_movie_casts_on_actor_id", using: :btree
  add_index "movie_casts", ["casting_type_id"], name: "index_movie_casts_on_casting_type_id", using: :btree
  add_index "movie_casts", ["movie_id"], name: "index_movie_casts_on_movie_id", using: :btree

  create_table "movie_ratings", force: :cascade do |t|
    t.date     "date_watched"
    t.integer  "user_rating"
    t.text     "review"
    t.integer  "user_id"
    t.integer  "movie_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "movie_ratings", ["movie_id"], name: "index_movie_ratings_on_movie_id", using: :btree
  add_index "movie_ratings", ["user_id"], name: "index_movie_ratings_on_user_id", using: :btree

  create_table "movie_roles", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "movie_roles", ["movie_id"], name: "index_movie_roles_on_movie_id", using: :btree
  add_index "movie_roles", ["role_id"], name: "index_movie_roles_on_role_id", using: :btree

  create_table "movie_topics", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "movie_topics", ["movie_id"], name: "index_movie_topics_on_movie_id", using: :btree
  add_index "movie_topics", ["topic_id"], name: "index_movie_topics_on_topic_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.time     "duration"
    t.string   "language"
    t.string   "subtitles"
    t.string   "dubbed"
    t.string   "country"
    t.string   "age_rating"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "poster"
    t.text     "trailer"
    t.time     "date_released"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "gender",        limit: 1
    t.string   "occupation"
    t.integer  "user_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.text     "picture"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.date     "date_of_birth"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "character_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "studio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sponsors", ["movie_id"], name: "index_sponsors_on_movie_id", using: :btree
  add_index "sponsors", ["studio_id"], name: "index_sponsors_on_studio_id", using: :btree

  create_table "studios", force: :cascade do |t|
    t.string   "studio_name"
    t.string   "country"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "picture"
  end

  create_table "topics", force: :cascade do |t|
    t.string   "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "used_devices", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "device_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "used_devices", ["device_id"], name: "index_used_devices_on_device_id", using: :btree
  add_index "used_devices", ["user_id"], name: "index_used_devices_on_user_id", using: :btree

  create_table "user_types", force: :cascade do |t|
    t.string   "type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "password"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_type_id"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["user_type_id"], name: "index_users_on_user_type_id", using: :btree

  add_foreign_key "actor_roles", "actors"
  add_foreign_key "actor_roles", "roles"
  add_foreign_key "directs", "directors"
  add_foreign_key "directs", "movies"
  add_foreign_key "movie_casts", "actors"
  add_foreign_key "movie_casts", "casting_types"
  add_foreign_key "movie_casts", "movies"
  add_foreign_key "movie_ratings", "movies"
  add_foreign_key "movie_ratings", "users"
  add_foreign_key "movie_roles", "movies"
  add_foreign_key "movie_roles", "roles"
  add_foreign_key "movie_topics", "movies"
  add_foreign_key "movie_topics", "topics"
  add_foreign_key "profiles", "users"
  add_foreign_key "sponsors", "movies"
  add_foreign_key "sponsors", "studios"
  add_foreign_key "used_devices", "devices"
  add_foreign_key "used_devices", "users"
  add_foreign_key "users", "user_types"
end
