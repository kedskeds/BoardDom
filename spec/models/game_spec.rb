require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:game){Game.new(title: 'Warhammer 40k',
                      description: 'warhammer 40k description',
                      image_url: 'https://warhammerart.com/wp-content/uploads/2015/10/40k-book-cover-5th-ed.jpg')}
  it'has a title' do
    expect(game.title).to eq('Warhammer 40k')
  end

  it'has a description' do
    expect(game.description).to eq('warhammer 40k description')
  end

  it'has a image_url' do
    expect(game.image_url).to eq('https://warhammerart.com/wp-content/uploads/2015/10/40k-book-cover-5th-ed.jpg')
  end

  describe '#rating' do
    it 'returns the user rating of the game as a percentage' do
      game.save!
      user = User.create!(username: "slagathor", email: 'email@gmail.com', password:'password', password_confirmation: 'password', avatar: Faker::Avatar.image, location: "#{Faker::Address.city}, #{Faker::Address.state}", bio: Faker::Lorem.paragraph)
      vote = Vote.create!(voter: user, votable: game, up: 1)
      p vote
      expect(Game.last.rating).to eq(100.00)
    end
  end

  describe '#alphabetize' do
    it 'returns games sorted alphabetically' do
      expect(Game.alphabetize).to eq(Game.order(:title))
    end
  end

  describe '#sort_by_rating' do
    it 'returns games sorted by rating' do
      expect(Game.sort_by_rating).to eq(Game.all.sort_by {|game| -game.rating })
    end
  end

  describe '#scifi' do
    it 'returns scifi games' do
      expect(Game.scifi).to eq(Game.where(genre: 'Sci-Fi'))
    end
  end

  describe '#strategy' do
    it 'returns strategy games' do
      expect(Game.strategy).to eq(Game.where(category: 'Table Top Strategy'))
    end
  end

  describe '#search' do
    it 'searches for a user' do
      game.save!
      expect(Game.search(game.title)).to eq(Game.where("title ILIKE ? OR description ILIKE ?", "%#{game.title}%", "%#{game.title}%"))
    end
  end

  context "active record" do
    context 'validations' do
      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:description) }
    end
    context 'associations' do
      it { should have_many(:comments) }
      it { should have_many(:votes) }
      it { should have_and_belong_to_many(:users) }
    end
  end

end
