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

ActiveRecord::Schema.define(version: 20170520115947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_achievements_on_slug", using: :btree
  end

  create_table "albums", force: :cascade do |t|
    t.string   "title"
    t.string   "cover_photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "slug"
    t.index ["slug"], name: "index_albums_on_slug", unique: true, using: :btree
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
    t.index ["slug"], name: "index_articles_on_slug", unique: true, using: :btree
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "birthday"
  end

  create_table "contacts", force: :cascade do |t|
    t.text     "russian"
    t.text     "ukrainian"
    t.text     "english"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fixtures", force: :cascade do |t|
    t.string   "home_team"
    t.string   "away_team"
    t.string   "category"
    t.string   "score",      default: "---"
    t.datetime "date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.string   "season",     default: "Турнирная таблица Первенства Украины 2017/2018"
    t.text     "body"
    t.string   "slug"
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.index ["slug"], name: "index_games_on_slug", using: :btree
  end

  create_table "graduates", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "league_teams", force: :cascade do |t|
    t.string   "team_name"
    t.integer  "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_league_teams_on_league_id", using: :btree
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merits", force: :cascade do |t|
    t.string   "merit"
    t.integer  "coach_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_merits_on_coach_id", using: :btree
  end

  create_table "partnerships", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "coach_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_partnerships_on_coach_id", using: :btree
    t.index ["team_id"], name: "index_partnerships_on_team_id", using: :btree
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "album_id"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_photos_on_album_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "birthday"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "photo"
    t.index ["team_id"], name: "index_players_on_team_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "team"
    t.string   "coach"
    t.string   "stadium"
    t.string   "mon"
    t.string   "tue"
    t.string   "wed"
    t.string   "thu"
    t.string   "fri"
    t.string   "sat"
    t.string   "sun"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.integer  "points"
    t.string   "team_name"
    t.integer  "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_tables_on_league_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
    t.string   "photo"
    t.index ["slug"], name: "index_teams_on_slug", unique: true, using: :btree
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "kind"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
    t.index ["slug"], name: "index_tournaments_on_slug", unique: true, using: :btree
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
    t.string   "provider"
    t.string   "uid"
    t.string   "username"
    t.string   "avatarc"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "summary"
    t.string   "video_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
    t.index ["slug"], name: "index_videos_on_slug", unique: true, using: :btree
  end

  create_table "views", force: :cascade do |t|
    t.string   "viewable_type"
    t.integer  "viewable_id"
    t.integer  "views",         default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["viewable_id", "viewable_type"], name: "index_views_on_viewable_id_and_viewable_type", using: :btree
    t.index ["viewable_type", "viewable_id"], name: "index_views_on_viewable_type_and_viewable_id", using: :btree
  end

  add_foreign_key "league_teams", "leagues"
  add_foreign_key "merits", "coaches"
  add_foreign_key "partnerships", "coaches"
  add_foreign_key "partnerships", "teams"
  add_foreign_key "photos", "albums"
  add_foreign_key "players", "teams"
  add_foreign_key "tables", "leagues"
end
