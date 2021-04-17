feature 'attack' do
  scenario 'player gets a confirmation after attack' do
    sign_in_and_play

    click_button 'Attack'

    expect(page).to have_content 'Charlotte punched Mittens'
  end

  scenario 'reduces Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Ok'
    
    expect(page).not_to have_content 'Mitten:60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end