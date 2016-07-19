# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Inventory.destroy_all
Work.destroy_all

3.times do
	User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

3.times do
	Category.create(name: Faker::Name.name)
end

3.times do
	Inventory.create(description: Faker::Lorem.sentence, serie: Faker::Number.number(10), size: 1, category_id: Category.first.id)
end

3.times do
	Work.create(description: Faker::Lorem.sentence, user_id: User.first.id)
end
