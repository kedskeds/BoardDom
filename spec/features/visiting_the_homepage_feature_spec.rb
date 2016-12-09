feature "visiting the home page" do
  scenario "the user sees a list of games" do


    newest_game = Game.create!(title: "Settlers", description: "Settle things", image_url:"https://images-na.ssl-images-amazon.com/images/G/01/toys/detail-page/B000W7JWUA-2-lg.jpg")

    visit "/"
    within("body") do
      expect(page).to have_content "Settlers"
      # expect(page).to have_content ...other content
      page.click_link('', :href => "/games/#{newest_game.id}")
    end

    expect(page).to have_current_path game_path(newest_game)
  end
end
