# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Condo.destroy_all
# Cat.destroy_all

10.times do |index|
  User.create!(email: Faker::Internet.email,
              password: Faker::Internet.password(8, 10),
              username: Faker::Internet.user_name)

  @user_id = User.last.id

  1.times do |k|
    Condo.create!(user_id: @user_id,
                name: Faker::DragonBall.character,
                capacity: Faker::Number.between(1, 3))

    @condo_id = Condo.last.id

    1.times do |r|
      Cat.create!(condo_id: @condo_id,
                  name: Faker::Cat.name,
                  caption: Faker::FamilyGuy.quote,
                  breed: Faker::Cat.breed,
                  expression: Faker::SlackEmoji.people,
                  pose: Faker::Superhero.name)
    end
  end
end

p "Created #{User.count} users"
p "Created #{Condo.count} condos"
p "Created #{Cat.count} cats"