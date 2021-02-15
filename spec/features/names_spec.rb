feature "Testing Names" do
  scenario "Can enter names and they apear on screen" do
    visit('/')
    fill_in('player_1', with: "Player 1")
    fill_in('player_2', with: "Player 2")
    click_button("Submit")
    expect(page).to have_content "Player 1 Vs Player 2"
  end
end

feature "Testing HP" do
  scenario "Can see Player 2s HP" do
    visit('/')
    fill_in('player_1', with: "Player 1")
    fill_in('player_2', with: "Player 2")
    click_button("Submit")
    expect(page).to have_content "Player 2: 100HP"
  end
end
