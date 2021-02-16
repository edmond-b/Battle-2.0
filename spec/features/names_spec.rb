feature "Testing Names" do
  scenario "Can enter names and they apear on screen" do
    sign_in_and_play
    expect(page).to have_content "Player 1 Vs Player 2"
  end
end

feature "Testing HP" do
  scenario "Can see Player 2s HP" do
    sign_in_and_play
    expect(page).to have_content "Player 2: 100HP"
  end
end
