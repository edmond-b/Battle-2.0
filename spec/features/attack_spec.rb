feature "Testing Attack" do
  scenario "Player 1 can attack player 2 with confermation" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Player 1 attacked Player 2"
  end

  scenario "reduce player 2 hp when attacked" do
    srand(10)
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).not_to have_content("Player 2: 100HP")
    expect(page).to have_content("Player 2: 90HP")
  end
end
