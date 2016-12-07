feature "visiting the home page" do
  scenario "the user sees a list of games" do
    visit "/"

    within(".game-list") do
      expect(page).to have_content Game.last.title
      expect(page).to have_content Game.last.description
      # expect(page).to have_content ...other content
      click_link("#game-#{Game.last.id}")
    end

    expect(page).to have_current_path game_path(Game.last)
  end
end
