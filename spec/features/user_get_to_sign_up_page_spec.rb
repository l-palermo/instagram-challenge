require "rails_helper"

RSpec.feature 'Instagram app' do

  scenario 'user get to instangram sign up page' do
    visit '/'
    click_link 'Sign up now!'
    expect(page).to have_content('Welcome to Instagram')
  end

  # As a user 
  # So I can be part of the comunity
  # I want to get to instangram sign up page

  scenario 'user input valid parametrs in the given form' do 
    visit '/'
    click_link 'Sign up now!'
    fill_in 'user_name', with: 'test'
    fill_in 'user_surname', with: 'test test'
    fill_in 'user_email', with: 'test@test.ts'
    fill_in 'user_password', with: 'password'
    click_button 'Sign up'
    # expect(current_path).to be('/user/show')
    expect(page).to have_content('Hi test')
  end

  # As a user
  # So I can submit only valid informations when I sign up
  # I want to be redirected to the sign up page if prameters are invalid

  scenario 'user input invalid parametrs in the given form' do 
    visit '/'
    click_link 'Sign up now!'
    fill_in 'user_name', with: ''
    fill_in 'user_surname', with: 'test test'
    fill_in 'user_email', with: 'test@test'
    fill_in 'user_password', with: 'pass'
    click_button 'Sign up'
    expect(current_path).to eq('/users')
    expect(page).to have_content('Welcome to Instagram')
  end

end 