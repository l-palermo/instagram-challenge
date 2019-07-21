require "rails_helper"

RSpec.feature 'Instagram app' do

  scenario 'user get to instangram sign up page' do
    visit '/'
    expect(page).to have_content('Welcome to Instagram')
  end

  scenario 'user input valid parametrs in the given form' do 
    visit '/'

    fill_in 'user_name', with: 'test'
    fill_in 'user_surname', with: 'test test'
    fill_in 'user_email', with: 'test@test.ts'
    fill_in 'user_password', with: 'password'
    click_button 'Sign up'
    # expect(current_path).to be('/user/show')
    expect(page).to have_content('Hi test')

  end
end 