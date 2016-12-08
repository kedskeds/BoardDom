require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:game){Game.new(title: 'Warhammer 40k', description: 'warhammer 40k description' , image_url: 'https://warhammerart.com/wp-content/uploads/2015/10/40k-book-cover-5th-ed.jpg'
)}
  it'has a title' do
    expect(game.title).to eq('Warhammer 40k')
  end

  it'has a description' do
    expect(game.description).to eq('warhammer 40k description')
  end

  it'has a image_url' do
    expect(game.image_url).to eq('https://warhammerart.com/wp-content/uploads/2015/10/40k-book-cover-5th-ed.jpg')
  end

  context "active record" do
      it { should have_many(:comments) }
      it { should have_and_belong_to_many(:users) }
  end

end
