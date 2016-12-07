
feature "visiting the game detail page" do
  scenario "the user sees details for a game" do

      game = Game.create(title:"settlers of cattan", description:"It's a bad game", image_url:"https://images-na.ssl-images-amazon.com/images/G/01/toys/detail-page/B000W7JWUA-2-lg.jpg")

      visit "/games/#{game.id}"

      within("body") do
        expect(page).to have_content game.title
        expect(page).to have_content game.description
      # expect(page).to have_content ...other content
      end

    expect(page).to have_current_path game_path(Game.last)
  end
end


