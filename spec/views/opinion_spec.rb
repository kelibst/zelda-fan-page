describe 'Testing post controller and views', type: :feature do
  before :each do
    a = User.new(first_names: 'gajksj', last_name: 'kkllsl', email: 'user@example.com', password: 'password1234')
    a.save
    b = User.new(first_names: 'first', last_name: 'last', email: 'ali@example.com', password: 'password1234')
    b.save

    visit '/users/sign_in'
    within('main') do
      fill_in 'user[email]', with: 'user@example.com'
      fill_in 'user[password]', with: 'password1234'
    end
    click_button 'commit'
  end
  it 'A valid user can send a post or opinion' do
    visit '/'
    within('main') do
      fill_in 'opinion[content]', with: 'Some random contents'
    end
    click_button 'Create Opinion'
    expect(page).to have_content 'Some random contents'
  end
end
