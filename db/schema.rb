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

ActiveRecord::Schema.define(version: 2020_09_26_052001) do

  create_table "alram_boards", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "board_id"
    t.string "post_link"
    t.string "post_id"
    t.string "new_post_id"
    t.string "new_post_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_alram_boards_on_user_id"
  end

  create_table "alram_tests", force: :cascade do |t|
    t.string "title"
    t.string "desc"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_alram_tests_on_user_id"
  end

  create_table "re_posts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "comment"
    t.integer "alram_test_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alram_test_id"], name: "index_re_posts_on_alram_test_id"
    t.index ["user_id"], name: "index_re_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alram_boards", "users"
  add_foreign_key "alram_tests", "users"
  add_foreign_key "re_posts", "alram_tests"
  add_foreign_key "re_posts", "users"
end
