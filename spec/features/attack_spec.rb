feature "Testing Attack" do
  scenario "Player 1 can attack player 2 with confermation" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "You Win!"
  end
end
