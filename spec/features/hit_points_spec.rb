feature 'Hit points' do
  scenario "player 2s hit points" do
    visit '/'
    fill_in :player_1_name, with: 'Charlotte'
    fill_in :player_2_name, with: 'Mittens'

    save_and_open_page

    click_button 'Submit'

    expect(page).to have_content 'Mittens: 60HP'
  end
end
