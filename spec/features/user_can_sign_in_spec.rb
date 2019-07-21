require "rails_helper"

RSpec.feature 'Instagram app' do

  scenario 'the user get to the homepage' do
    visit '/'
    expect(current_path).to eq('/')
    expect(page).to have_content('Welcome to instagram Log in')
  end

  scenario 'the user input valid email and' do 
    user = User.create(name: 'test', email: 'test@test.com', password: 'testey')
    visit '/'
    fill_in 'sessions_email', with: 'test@test.com'
    fill_in 'sessions_password', with: 'testey'
    click_button 'Log in'
    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_content('Hi test')
  end
end