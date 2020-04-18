# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_18_132340) do

  create_table "elections", force: :cascade do |t|
    t.string "province"
    t.string "other_province_name"
    t.integer "mp_id"
    t.integer "period_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mps", force: :cascade do |t|
    t.string "name"
    t.string "name2"
    t.string "surname"
    t.string "gender"
    t.date "birthdate"
    t.date "deaddate"
    t.text "detail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mps_parties", force: :cascade do |t|
    t.integer "mps_id"
    t.integer "parties_id"
    t.index ["mps_id"], name: "index_mps_parties_on_mps_id"
    t.index ["parties_id"], name: "index_mps_parties_on_parties_id"
  end

  create_table "mps_periods", force: :cascade do |t|
    t.integer "mp_id"
    t.integer "period_id"
    t.index ["mp_id"], name: "index_mps_periods_on_mp_id"
    t.index ["period_id"], name: "index_mps_periods_on_period_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "name"
    t.string "shortname"
    t.date "establishdate"
    t.string "logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "periods", force: :cascade do |t|
    t.string "name"
    t.date "startdate"
    t.date "enddate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts_tags", id: false, force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
    t.index ["post_id"], name: "index_posts_tags_on_post_id"
    t.index ["tag_id"], name: "index_posts_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags_posts", id: false, force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
    t.index ["post_id"], name: "index_tags_posts_on_post_id"
    t.index ["tag_id"], name: "index_tags_posts_on_tag_id"
  end

end
