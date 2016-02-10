feature 'Creating links'  do

  scenario 'creating a new link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.xkcd.com/'
    fill_in 'title', with: 'xkcd'
    click_button 'Create link'
      expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('xkcd')
    end
  end
end