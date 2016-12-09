class GamesUsers < ActiveRecord::Base
  validates :user_id, :uniqueness => true, :scope => :game_id
end
