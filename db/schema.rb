

ActiveRecord::Schema.define(version: 2022_12_15_013306) do

  
  enable_extension "plpgsql"

  create_table "facebooks", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_facebooks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "facebooks", "users"
end
