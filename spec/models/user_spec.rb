require 'rails_helper'

RSpec.describe User, type: :model do
  valid_parameters = {name: 'test', email: 'test@test.com', password: 'testey'}
  
  it 'creates a new user' do
    user = User.create valid_parameters
    expect(user).to be_instance_of(User)
  end
end
