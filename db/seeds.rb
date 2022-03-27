puts "Seeding the data"
# create_table "leagues", force: :cascade do |t|
#     t.string "sport"
#     t.integer "level"
#     t.string "day"
#     t.string "time"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end
    League.create( sport: "Kickball", day: "Tuesday", time: "7:30 PM" )
#   create_table "users", force: :cascade do |t|
#     t.string "email"
#     t.string "username"
#     t.string "name"
#     t.string "password"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.integer "league_id"
#     t.index ["league_id"], name: "index_users_on_league_id"
#   end
    User.create(email: "jdbrown@yahoo.com", name: "Jesse", nickname: 'jess', league_id: 1)
    User.create(email: "Mtb@yahoo.com", name: "Matteo", nickname: 'Matteo',  league_id: 1)
    User.create(email: "Nina@yahoo.com", name: "Nurina", nickname: 'Nina', league_id: 1)
    User.create(email: "jni@yahoo.com",  name: "Jeni", nickname: 'JNIIII',  league_id: 1)
puts "🌱 Done seeding!"