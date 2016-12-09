class User < ActiveRecord::Base
  has_and_belongs_to_many :games, -> { uniq }

  has_many :votes, foreign_key: :voter_id
  has_many :comments, foreign_key: :author_id

  validates :username, presence: true, uniqueness: true

  scope :search, -> (username) { where("username ILIKE ? OR location ILIKE ?", "%#{username}%", "%#{username}%") }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
