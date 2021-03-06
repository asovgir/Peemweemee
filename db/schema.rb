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

ActiveRecord::Schema.define(version: 20190921032059) do

  create_table "agendacategories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agendas", force: :cascade do |t|
    t.string "topic"
    t.boolean "is_complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "agendacategory_id"
    t.index ["agendacategory_id"], name: "index_agendas_on_agendacategory_id"
  end

  create_table "bet_ideas", force: :cascade do |t|
    t.string "idea"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bets", force: :cascade do |t|
    t.boolean "is_complete"
    t.integer "category_id"
    t.string "bet_name"
    t.string "bet_description"
    t.integer "user_id"
    t.date "date_completed"
    t.integer "betcoin_wager"
    t.string "ticket_wager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_bets_on_category_id"
    t.index ["user_id"], name: "index_bets_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

end
