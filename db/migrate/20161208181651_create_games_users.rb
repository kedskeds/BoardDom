class CreateGamesUsers < ActiveRecord::Migration
  def change
    create_join_table :games, :users

  end
end
