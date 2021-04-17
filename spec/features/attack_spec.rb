feature 'attack' do
  scenario 'player gets a confirmation after attack' do
    sign_in_and_play

    click_button 'Attack'

    expect(page).to have_content 'Charlotte punched Mittens'
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario 'reduces Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    
    expect(page).not_to have_content 'Mitten:60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation
  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Mittens punched Charlotte'
  end
end