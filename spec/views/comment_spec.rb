require 'rails_helper'
require 'capybara/rspec'
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

  it 'should be able to create a comment on a post' do
    visit '/'
    within('main') do
      fill_in 'opinion[content]', with: 'Some random contents'
    end
    click_button 'Create Opinion'

    within('form#new_comment') do
      fill_in 'comment[content]', with: 'first comment'
    end

    click_button 'Comment'
    expect(page).to have_content 'first comment'
  end
end
