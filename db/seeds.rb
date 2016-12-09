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

Game.create!(title: "Warhammer 40k", description: 'warhammer 40k description' , image_url: 'https://warhammerart.com/wp-content/uploads/2015/10/40k-book-cover-5th-ed.jpg',category:'Table Top Strategy' , genre:'Sci-Fi')
Game.create!(title: "Dungeons and Dragons", description: 'dnd description' , image_url: "http://www.planetcomicsdirect.com/images/P/DCD463898-01.jpg",category:'RPG' , genre:'Fantasy')
Game.create!(title: "Settlers of Catan", description: 'SoC description' , image_url: 'https://images-na.ssl-images-amazon.com/images/G/01/toys/detail-page/B000W7JWUA-2-lg.jpg',category:'Table Top Strategy' , genre:'Historical' )
Game.create!(title: "X-Wing", description: 'X-Wing description' , image_url: "http://mixnmojo.com/galleries/full/full20040606161343.jpg",category:'Table Top Strategy' , genre:'Sci-Fi' )
Game.create!(title: "Pandemic", description: 'pandemic description' , image_url: "https://cf.geekdo-images.com/images/pic1534148.jpg",category:'Strategy Card Game' , genre:'Dystopian' )
Game.create!(title: "Warhammer", description: 'warhammer description' , image_url: "https://upload.wikimedia.org/wikipedia/en/c/cc/Warhammer_8th_Edition_Cover.jpg",category:'Table Top Strategy' , genre:'Fantasy' )
Game.create!(title: "BAKER STREET", description: 'Initially launched as a Kickstarter project in 2014, indie publisher Fearlight Games raised more than $30,000 to create Baker Street: Roleplaying in the world of Sherlock Holmes. The Victorian-era RPG gives players the key to flat number 221B, and has them solving cases for Dr. Watson himself.' , image_url: "https://cdn1.vox-cdn.com/uploads/chorus_asset/file/6234479/bakerstreetcover.jpg",category:'RPG' , genre:'Historical' )
Game.create!(title: "DOWNFALL", description: 'Caroline Hobbs latest RPG is an apocalyptic story game that centers on the creation of collaborative fiction. Groups of up to 3 players work over 2-4 hours to create a world together. They also create a main character who will have a personal, tragic journey which mirrors that of their world.' , image_url: "https://heterogenoustasks.files.wordpress.com/2015/07/downfall1.png?w=640",category:'RPG' , genre:'apocalyptic' )
Game.create!(title: "Faith", description: 'Faith is an amalgam of tabletop RPGs, board games and living card games. The core set includes everything you need to play in its unique science fiction universe. That includes information on all the major races, a collection of cardboard chits and all the required cards.' , image_url: "http://prefundia.com/uploads/home/e5419306edd2b4eff5a5919e6ad4a0c5.jpg",category:'RPG' , genre:'Sci-Fi' )
Game.create!(title: "Fall of Magic", description: 'Another collaborative storytelling game the centerpiece of which is a handmade, silk-screened, five-foot-long scroll. Its also one of the few games on the list thats suitable for kids, and plays well with ages eight and up.' , image_url: "https://www.shutupandsitdown.com/wp-content/uploads/2016/02/5a04ed9afc9874a18bef0f64d2a0d1e0.jpg",category:'RPG' , genre:'Fantasy' )
Game.create!(title: "Blades In the Dark", description: 'The streets of Duskwall are haunted. By vengeful ghosts and cruel demons. By the masked spirit wardens and their lightning-hooks. By sharp-eyed inspectors and their gossiping crows. By the alluring hawkers of vice and pleasure. By thieves and killers and scoundrels like you — the Blades in the Dark.' , image_url: "https://cdn3.vox-cdn.com/uploads/chorus_asset/file/6234529/blades.jpg",category:'RPG' , genre:'Fantasy' )
Game.create!(title: "Deluxe Tunnels & Trolls", description: 'First published in 1975, the Tunnels & Trolls series is a contemporary of Dungeons & Dragons and shares what initially feels like many common themes. Deluxe Tunnels & Trolls is a refreshed version of the original game, and features more lore and maps about the Trollworld where the game takes place.' , image_url: "http://www.drivethrurpg.com/images/2238/152613.jpg",category:'RPG' , genre:'Fantasy' )
Game.create!(title: "Blood Rage", description: 'BBlood Rage casts you in the role of Viking warriors in a battle for conquest in the midst of the end of the world – Ragnarok. The game focuses on area control and combat against your fellow players, each of whom has access to a gorgeous selection of miniatures, including massive monsters that can turn the tide of the war.' , image_url: "https://cf.geekdo-images.com/images/pic2439223.jpg",category:'Table Top Strategy' , genre:'Fantasy' )
Game.create!(title: "Darkness Comes Rattling", description: 'You and your friends control warriors drawn from the Tribes of Man, attempting to forestall the great serpent Darkness as it seeks to fully devour the sun. Darkness Comes Rattling opens with the players already feeling like they face an insurmountable task, and gradually gets more difficult and devastating as you move along.' , image_url: "http://media1.gameinformer.com/filestorage/CommunityServer.Components.SiteFiles/imagefeed/featured/tabletop/bestof2015/darkness.jpg",category:'RPG' , genre:'Fantasy' )
Game.create!(title: "Portal", description: 'Aperture Laboratories has once again started up testing, and you and your friends are on deck to confront the murderous traps and dangers along a conveyor belt of death. This one is a lot of fun, but its humor may be a little bit lost on players whove never encountered the zany flavor of the original digital incarnation.' , image_url: "https://images-na.ssl-images-amazon.com/images/I/A1OpBNKFUoL._SL1500_.jpg",category:'Competitive' , genre:'Puzzler' )
Game.create!(title: "T.I.M.E. Stories", description: 'You are agents of a futuristic corps that aims to resolve paradoxes in the time stream. In each scenario, you travel to different eras of history, attempting to resolve the mysteries that have warped the fabric of known time.' , image_url: "http://media1.gameinformer.com/filestorage/CommunityServer.Components.SiteFiles/imagefeed/featured/tabletop/bestof2015/timestories.jpg",category:'Cooperative' , genre:'Sci-Fi' )
Game.create!(title: "XCOM:The Board Game", description: 'One of the best licensed games of recent years, XCOM takes the formula established by the excellent Firaxis video game and takes it in a whole new direction.XCOM: The Board Game instead places each player in charge of one part of the anti-alien taskforce. ' , image_url: "https://cf.geekdo-images.com/images/pic2247621.jpg",category:'Cooperative' , genre:'Sci-Fi' )
Game.create!(title: "Cypher System", description: 'It provides a complete set of rules for running Cypher games in any setting, and includes enough spells, equipment, and character descriptors to fuel a role-playing campaign of science fiction, fantasy, horror, history, or any other imaginable setup.' , image_url: "http://media1.gameinformer.com/filestorage/CommunityServer.Components.SiteFiles/imagefeed/featured/tabletop/bestof2015/cypher.jpg",category:'RPG' , genre:'Mixed' )
Game.create!(title: "The End of the World: Wrath of the Gods", description: 'Part of a series of role-playing games that each deals with a particular world-ending catastrophe, it puts players in the midst of a scenario that is suddenly confronted by the very unreal potential of ancient gods and supernatural beings rising to devastate the world' , image_url: "https://images-na.ssl-images-amazon.com/images/I/51zcPWCrb%2BL.jpg",category:'RPG' , genre:'apocalyptic' )

# Game.create!(title: "", description: '' , image_url: "",category:'' , genre:'' )

user1 = User.create!(username: "slagathor", email: 'email@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}", bio: Faker::Lorem.paragraph)
user2 = User.create!(username: "tombo", email: 'emaigl@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}", bio: Faker::Lorem.paragraph)
user3 = User.create!(username: "fergus", email: 'emadil@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}", bio: Faker::Lorem.paragraph)
user4 = User.create!(username: "trogdorr", email: 'emsail@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}", bio: Faker::Lorem.paragraph)
user5 = User.create!(username: "trogdorf", email: 'emsaisdal@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}", bio: Faker::Lorem.paragraph)


40.times do
  Vote.create!(voter_id: User.all.sample.id, votable: Game.all.to_a.sample, up: 1)
  Vote.create!(voter_id: User.all.sample.id, votable: Game.all.to_a.sample, up: 0)
end

# 40.times do
#     Vote.create!(voter_id: User.all.sample.id, votable: Game.all.to_a.sample)
# end
