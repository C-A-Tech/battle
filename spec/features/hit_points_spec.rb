feature 'View hit points' do
  scenario "see Player 2 hit points" do
    sign_in_and_play

    expect(page).to have_content 'Mittens: 60HP'  
    save_and_open_page
  end
end
