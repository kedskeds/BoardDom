# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.create!(title: "Warhammer 40k", description: 'warhammer 40k description' , image_url: 'https://warhammerart.com/wp-content/uploads/2015/10/40k-book-cover-5th-ed.jpg' )
Game.create!(title: "Dungeons and Dragons", description: 'dnd description' , image_url: "http://www.planetcomicsdirect.com/images/P/DCD463898-01.jpg")
Game.create!(title: "Settlers of Catan", description: 'SoC description' , image_url: 'https://images-na.ssl-images-amazon.com/images/G/01/toys/detail-page/B000W7JWUA-2-lg.jpg' )
Game.create!(title: "X-Wing", description: 'X-Wing description' , image_url: "http://mixnmojo.com/galleries/full/full20040606161343.jpg" )
game2 = Game.create!(title: "Pandemic", description: 'pandemic description' , image_url: "https://cf.geekdo-images.com/images/pic1534148.jpg" )
game1 = Game.create!(title: "Warhammer", description: 'warhammer description' , image_url: "https://upload.wikimedia.org/wikipedia/en/c/cc/Warhammer_8th_Edition_Cover.jpg" )

user = User.create!(username:'drdynamic', email: 'email@gmail.com', password:'password')
user.games << game1
user.games << game2
