puts "Seeding the data"
User.destroy_all
User.reset_pk_sequence
League.destroy_all
League.reset_pk_sequence

    kickball = League.create( sport: "Kickball", day: "Tuesday", time: "7:30 PM")
    basketball = League.create( sport: "Basketball", day: "Tuesday", time: "7:30 PM")
    volleyball = League.create( sport: "Volleyball", day: "Tuesday", time: "7:30 PM")

    User.create(email: "jdbrown@yahoo.com", level: "Beginner", name: "Jesse", nickname: 'jess', sport: "Kickball", league: kickball)
    User.create(email: "Mtb@yahoo.com", level: "Beginner", name: "Matteo", nickname: 'Matteo', sport: "Basketball", league: basketball)
    User.create(email: "Nina@yahoo.com", level: "Beginner", name: "Nurina", nickname: 'Nina', sport: "Volleyball", league: volleyball)
    User.create(email: "jni@yahoo.com",  level: "Beginner", name: "Jeni", nickname: 'JNIIII', sport: "Kickball", league: kickball)
puts "🌱 Done seeding!"