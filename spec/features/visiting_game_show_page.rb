feature "visiting the game detail page" do
  scenario "the user sees details for a game" do
    visit "/"

    within(".game-list") do
      expect(page).to have_content Game.last.name
      # expect(page).to have_content ...other content
      click_link(".game-details")
    end

    expect(page).to have_current_path game_path(Game.last)
  end
end
