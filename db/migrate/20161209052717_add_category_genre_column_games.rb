class AddCategoryGenreColumnGames < ActiveRecord::Migration
  def change
    add_column :games, :genre, :string
    add_column :games, :category, :string
  end
end
