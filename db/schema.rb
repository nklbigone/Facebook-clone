ActiveRecord::Schema.define(version: 2019_08_29_080413) do

  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.text "image"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["email"], name: "users_email_key", unique: true
  end

  add_foreign_key "posts", "users"
end
