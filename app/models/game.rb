class Game < ActiveRecord::Base
  has_and_belongs_to_many :users, ->{ uniq }

  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :title, presence: true
  validates :description, presence: true

  scope :search, -> (title) { where("title ILIKE ? OR description ILIKE ?", "%#{title}%", "%#{title}%") }
  scope :alphabetize, -> { order(:title) }
  scope :sort_by_rating, -> { all.sort_by { |game| -game.rating } }
  scope :scifi, -> { where(genre: 'Sci-Fi') }
  scope :strategy, -> { where(category: 'Table Top Strategy') }

  def rating
    ((votes.where(up: 1).count.to_f / votes.count.to_f ) * 100).round(2)
  end
end
