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

ActiveRecord::Schema.define(version: 20180304180228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer  "league_year_id"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.datetime "game_date"
    t.string   "api_url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["league_year_id"], name: "index_games_on_league_year_id", using: :btree
  end

  create_table "league_years", force: :cascade do |t|
    t.integer  "league_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "season_name"
    t.string   "season_type"
    t.boolean  "current_season"
    t.string   "season_year"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["league_id"], name: "index_league_years_on_league_id", using: :btree
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.string   "level"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "sport_id"
    t.integer  "current_league_year_id"
    t.index ["sport_id"], name: "index_leagues_on_sport_id", using: :btree
  end

  create_table "sports", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "league_id"
    t.string   "city"
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["game_id"], name: "index_teams_on_game_id", using: :btree
    t.index ["league_id"], name: "index_teams_on_league_id", using: :btree
  end

  add_foreign_key "games", "league_years"
  add_foreign_key "league_years", "leagues"
  add_foreign_key "leagues", "sports"
  add_foreign_key "teams", "games"
  add_foreign_key "teams", "leagues"
end
