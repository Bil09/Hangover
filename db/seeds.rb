# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Invitation.destroy_all && Chatroom.destroy_all && Participant.destroy_all && Party.destroy_all && User.destroy_all

test = User.create!(email: "test@test.com", password: "123123")
puts "#{test.email} seeded 🌹"

puts "started seeding User"
10.times do
  user = User.create!(
    email: "#{Faker::Name.first_name}@gmail.com",
    password: "123123"
  )
  puts "#{user.email} seeded 🌹"
end
puts "seeding finished User"

Invitation.create!(
  user: test,
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


Party.create! user: test, start_time: Time.now, address: Faker::Address.full_address
Party.create! user: User.second, start_time: Time.new(2022, 12, 15, 22, 30), address: Faker::Address.full_address

Chatroom.create!(
  party: Party.first,
  name: "Christmas Drinks"
)

Chatroom.create!(
  party: Party.second,
  name: "Rager at Bill"
)

puts "seed finised"
