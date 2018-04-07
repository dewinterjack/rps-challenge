feature 'User starts playing RPS' do
  scenario 'by entering their name and submitting' do
    visit('/')
    fill_in('player_name', :with => 'Jack')
    click_button('Submit')
    expect(page).to have_content 'Jack vs RPS Bot'
  end
  scenario 'by submitting without entering their name' do
    visit('/')
    click_button('Submit')
    expect(page).to have_content 'No name submitted.'
  end 
end