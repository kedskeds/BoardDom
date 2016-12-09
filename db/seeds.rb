# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.delete_all
User.delete_all
Comment.delete_all
Vote.delete_all

Game.create!(title: "Warhammer 40k", description: 'warhammer 40k description' , image_url: 'https://warhammerart.com/wp-content/uploads/2015/10/40k-book-cover-5th-ed.jpg' )
Game.create!(title: "Dungeons and Dragons", description: 'dnd description' , image_url: "http://www.planetcomicsdirect.com/images/P/DCD463898-01.jpg")
Game.create!(title: "Settlers of Catan", description: 'SoC description' , image_url: 'https://images-na.ssl-images-amazon.com/images/G/01/toys/detail-page/B000W7JWUA-2-lg.jpg' )
Game.create!(title: "X-Wing", description: 'X-Wing description' , image_url: "http://mixnmojo.com/galleries/full/full20040606161343.jpg" )
Game.create!(title: "Pandemic", description: 'pandemic description' , image_url: "https://cf.geekdo-images.com/images/pic1534148.jpg" )
Game.create!(title: "Warhammer", description: 'warhammer description' , image_url: "https://upload.wikimedia.org/wikipedia/en/c/cc/Warhammer_8th_Edition_Cover.jpg" )

user1 = User.create!(username: "slagathor", email: 'email@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}")
user2 = User.create!(username: "tombo", email: 'emaigl@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}")
user3 = User.create!(username: "fergus", email: 'emadil@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}")
user4 = User.create!(username: "trogdorr", email: 'emsail@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}")
user5 = User.create!(username: "trogdorf", email: 'emsaisdal@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}")


40.times do
  Vote.create!(voter_id: User.all.sample.id, votable: Game.all.to_a.sample, up: 1)
  Vote.create!(voter_id: User.all.sample.id, votable: Game.all.to_a.sample, up: 0)

end

# 40.times do
#     Vote.create!(voter_id: User.all.sample.id, votable: Game.all.to_a.sample)
# end
