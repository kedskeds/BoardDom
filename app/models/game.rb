class Game < ActiveRecord::Base
  has_and_belongs_to_many :users, ->{ uniq }

  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :title, presence: true
  validates :description, presence: true

  def rating
    ((votes.where(up: 1).count.to_f / votes.count.to_f ) * 100).round(2)
  end

  def self.search(search)
    where("title ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%")
  end

  def self.alphabetize
    Game.order(:title)
  end

  def self.sort_by_rating
    Game.all.sort_by {|game| -game.rating }
  end

  def self.scifi
    Game.where(genre: 'Sci-Fi')
  end

  def self.strategy
    Game.where(category: 'Table Top Strategy')
  end
end
