# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Invitation.destroy_all && Message.destroy_all && Chatroom.destroy_all && Participant.destroy_all && Party.destroy_all && Spot.destroy_all && User.destroy_all

bill = User.create!(email: "bill@gmail.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

casimir = User.create!(email: "casimir@gmail.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

max = User.create!(email: "max@gmail.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

test = User.create!(email: "test@test.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "markus@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "thomas@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "peter@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "claudia@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "tom@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "emma@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "felix@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "carmen@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "rober@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "klaus@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "julian@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "laura@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "erik@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "oli@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "jan@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "alexander@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "sophie@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "emilia@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "lara@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "anika@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "jonna@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "pier@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "pablo.escanol@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "whatisthecolorofyourbugatti@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

User.create!(email: "andrew.tate@email.com", password: "123123")
puts "created #{User.last.email} seeded 🌹"

puts "started seeding User"


Invitation.create!(
  user: max,
  friend_id: User.last.id,
  confirmed: true
)

Invitation.create!(
  user: test,
  friend_id: User.second.id,
  confirmed: true
)
Invitation.create!(
  user: test,
  friend_id: User.third.id,
  confirmed: true
)
Invitation.create!(
  user: User.second,
  friend_id: User.all[3].id,
  confirmed: true
)
Invitation.create!(
  user: User.second,
  friend_id: User.all[4].id,
  confirmed: true
)
Invitation.create!(
  user: User.second,
  friend_id: User.all[5].id,
  confirmed: true
)
Invitation.create!(
  user: User.second,
  friend_id: User.all[6].id,
  confirmed: true
)


Party.create! user: test, start_time: Time.now, address: "Balanstraße 73, Munich"

Party.create! user: User.second, start_time: Time.new(2022, 12, 15, 22, 30), address: Faker::Address.full_address

Chatroom.create!(
  party: Party.first,
  name: "Christmas Drinks"
)


Chatroom.create!(
  party: Party.second,
  name: "Rager at Bill"
)

puts "creating Spots"

Spot.create!(
  name: "LeWagon",
  address: "Euro Youth Hostel, Munich"
)

puts "#{Spot.last.name}"


Spot.create!(
  name: "P1 Club",
  address: " Prinzregentenstraße 1, 80538 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: "089 Bar & Lounge",
  address: "Maximilianspl. 5, 80333 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: "Pacha",
  address: "Maximilianspl. 4, 80333 Munich"
)

puts "#{Spot.last.name}"


Spot.create!(
  name: "Neuraum",
  address: "Arnulfstraße 17, 80335 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: "Bahnwärter Thiel",
  address: "Tumblingerstraße 45, 80337 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: "BLITZ Club",
  address: "Access via Ludwigsbrücke, Museumsinsel 1, 80538 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Simsalabim ",
  address: "Marienstraße 18, 80331 Munich"
)

puts "#{Spot.last.name}"


Spot.create!(
  name: "H'ugo's Pizza-Bar-Lounge",
  address: "Promenadepl. 3, 80333 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Hotel Bayerischer Hof",
  address: "Promenadepl. 2-6, 80333 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: "Tabacco",
  address: "Hartmannstraße 8, 80333 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Cadu, Cafe an der Uni ",
  address: "Ludwigstraße 24, 80539 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Gin City ",
  address: "Werksviertel, Speicherstraße 20, 81671 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Negroni Bar ",
  address: "Sedanstraße 9, 81667 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Schluckauf ",
  address: "Occamstraße 26, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Café Rennbahn ",
  address: "Feilitzschstraße 12, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Abseits ",
  address: "Marktstraße 3, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Wallace Bar ",
  address: "Occamstraße 2, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " EsteBar ",
  address: "Feilitzschstraße 19, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Trumpf oder Kritisch ",
  address: "Feilitzschstraße 14, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " The Potting Shed Bar & Kitchen ",
  address: "Occamstraße 11, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Landstreicher Bar ",
  address: "Feilitzschstraße 12, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Café Münchner Freiheit ",
  address: "Münchner Freiheit 20, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Schwabinger 7 ",
  address: "Feilitzschstraße 15, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Bucci Bar ",
  address: "Occamstraße 9, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " The Keg Bar ",
  address: "Trautenwolfstraße 1, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " CALL SOUL - Breaking Bar ",
  address: "Biedersteiner Str. 6, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " moejo91 - Bar & FeierLocation ",
  address: "Schellingstraße 91, 80799 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Landstreicher Bar ",
  address: "Feilitzschstraße 12, 80802 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " The Royal Dolores ",
  address: "Marienplatz 8, 80331 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Hofbräuhaus Munich ",
  address: "Platzl 9, 80331 Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Theresienwiese ",
  address: "Munich"
)

puts "#{Spot.last.name}"

Spot.create!(
  name: " Havana Club ",
  address: "Herrnstraße 30, 80539 Munich"
)

puts "#{Spot.last.name}"

puts ""
puts "seed finised"
