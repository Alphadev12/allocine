# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in (5..104)
	film = Movie.find(i)
	film.synopsis = Faker::Lorem.sentence(word_count: 10, supplemental: true)
	film.save
end
# genre = ["action", "horreur", "comédie", "drame"]
# 100.times do |index|
# 	Movie.create(
# 		name: Faker::Game.title,
# 		year: Faker::Date.between(from: 1900, to: 2020),
# 		genre: genre[rand(4)],
# 		synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: true),
# 		director: Faker::Name.first_name + Faker::Name.last_name,
# 		allocine_rating: (Faker::Number.between(from: 0, to: 5.0)).round(1),
# 		my_rating: nil,
# 		already_seen: false
# 	)
# end
