ActiveRecord::Schema[8.0].define(version: 2026_01_14_133208) do
  create_table "books", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "body"
  end
end
