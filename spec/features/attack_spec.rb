feature 'attack' do
  scenario 'player gets a confirmation after attack' do
    sign_in_and_play

    click_button 'Attack'

    expect(page).to have_content 'Charlotte punched Mittens'

  end
end