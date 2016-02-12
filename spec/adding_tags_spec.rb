feature 'Adding tags' do

  scenario 'adding a single tag to a link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.zombo.com/'
    fill_in 'title', with: 'This is Zombocom'
    fill_in 'tags', with: 'animation'

    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('animation')
  end

  scenario 'adding multiple tags to a new link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.zombo.com/'
    fill_in 'title', with: 'This is Zombocom'
    fill_in 'tags', with: 'animation education'
    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('animation','education')
  end


end