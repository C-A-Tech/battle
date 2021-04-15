
feature 'Enter names' do 
  scenario "submitting names" do
    visit '/'
    fill_in :player_1_name, with: 'Charlotte'
    fill_in :player_2_name, with: 'Mittens'

    save_and_open_page

    click_button 'Submit'

    

    expect(page).to have_content 'Charlotte vs Mittens'
  end
end
