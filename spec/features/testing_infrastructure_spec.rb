feature "Testing infrastructure" do
  scenario "Can run app and check page content" do
    visit('/')
    expect(page).to have_content 'BATTLE!'
  end
end

feature "Testing Names" do
  scenario "Can enter names and they apear on screen" do
    visit('/form')
    fill_in('player_1', with: "Player 1")
    fill_in('player_2', with: "Player 2")
    click_button("Submit")
    expect(page).to have_content "Player 1 VS Player 2"
  end
end
