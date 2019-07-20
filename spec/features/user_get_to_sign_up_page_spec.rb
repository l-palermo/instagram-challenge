require "rails_helper"

RSpec.feature 'Instagram app' do
  scenario 'user get to instangram sign up page' do
    visit '/'
    expect(page).to have_content('Welcome to Instagram')
  end
end 