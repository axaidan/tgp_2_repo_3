# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Gossip.destroy_all
City.destroy_all
Comment.destroy_all

#SEED CITY
5.times do
	City.create(name: Faker::Address.city, zip_code: rand(10000..99999).to_s)
end

#SEED USER
10.times do 
	prenom = Faker::Name.first_name
	User.create(first_name: prenom, last_name: Faker::Name.last_name, email: Faker::Internet.email(name: prenom), age: rand(14..70), city: City.all[rand(0..4)], password: Faker::String.random(length: 6..9))
end

#SEED GOSSIP
User.all.each do |user|
	5.times do
		Gossip.create(user: user, title: Faker::DcComics.title, content: Faker::Quote.famous_last_words, city: City.all[rand(0..4)])
	end
end

#SEED COMMENT
Gossip.all.each do |each_gossip|
	rand(3..8).times do
		Comment.create(user: User.all[rand(0..9)], 
					   gossip: each_gossip, 
					   content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote)
	end
end
