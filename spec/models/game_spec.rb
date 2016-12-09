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

  xdescribe 'rating' do
    it 'returns the user rating of the game as a percentage' do
      game.save!
      vote = Vote.create!(voter_id: 20, votable: game.id, up: 1)
      p vote
      expect(Game.last.rating).to eq()
    end
  end

  describe 'alphabetize' do
    it 'returns games sorted alphabetically' do
      expect(Game.alphabetize).to eq(Game.order(:title))
    end
  end

  describe 'sort_by_rating' do
    it 'returns games sorted by rating' do
      expect(Game.sort_by_rating).to eq(Game.all.sort_by {|game| -game.rating })
    end
  end

  describe 'scifi' do
    it 'returns scifi games' do
      expect(Game.scifi).to eq(Game.where(genre: 'Sci-Fi'))
    end
  end

  describe 'strategy' do
    it 'returns strategy games' do
      expect(Game.strategy).to eq(Game.where(category: 'Table Top Strategy'))
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
