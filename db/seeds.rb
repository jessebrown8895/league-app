puts "Seeding the data"
User.destroy_all
User.reset_pk_sequence
League.destroy_all
League.reset_pk_sequence
# create_table "leagues", force: :cascade do |t|
#     t.string "sport"
#     t.integer "level"
#     t.string "day"
#     t.string "time"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end
    kickball = League.create( sport: "Kickball", day: "Tuesday", time: "7:30 PM" )
    kickball = League.create( sport: "Basketball", day: "Tuesday", time: "7:30 PM" )
    kickball = League.create( sport: "Baseball", day: "Tuesday", time: "7:30 PM" )
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
    User.create(email: "jdbrown@yahoo.com", level: "Beginner", name: "Jesse", nickname: 'jess', league: kickball)
    User.create(email: "Mtb@yahoo.com", level: "Beginner", name: "Matteo", nickname: 'Matteo',  league: kickball)
    User.create(email: "Nina@yahoo.com", level: "Beginner", name: "Nurina", nickname: 'Nina', league: kickball)
    User.create(email: "jni@yahoo.com",  level: "Beginner", name: "Jeni", nickname: 'JNIIII',  league: kickball)
puts "🌱 Done seeding!"