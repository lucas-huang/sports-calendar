# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_17_023856) do

  create_table "matches", force: :cascade do |t|
    t.datetime "time"
    t.string "location"
    t.integer "home_team_score"
    t.integer "away_team_score"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.index ["away_team_id"], name: "index_matches_on_away_team_id"
    t.index ["home_team_id"], name: "index_matches_on_home_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "home_matches_id"
    t.integer "away_matches_id"
    t.boolean "favorite"
    t.index ["away_matches_id"], name: "index_teams_on_away_matches_id"
    t.index ["home_matches_id"], name: "index_teams_on_home_matches_id"
  end

  add_foreign_key "matches", "teams", column: "away_team_id"
  add_foreign_key "matches", "teams", column: "home_team_id"
  add_foreign_key "teams", "matches", column: "away_matches_id"
  add_foreign_key "teams", "matches", column: "home_matches_id"
end
