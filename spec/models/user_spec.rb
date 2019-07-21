require 'rails_helper'

RSpec.describe User, type: :model do
  valid_parameters = {name: 'test', surname: 'test', email: 'test@test.com', password: 'testey'}
  
  it 'creates a new user' do
    user = User.create valid_parameters
    expect(User.all[0]).to be_instance_of(User)
  end

  it 'require a name' do
    User.create(email: 'test@test.com', password: 'testey')
    expect(User.all[0]).to be(nil)
  end

  it 'require a valid email' do
    User.create(name: 'test', email: 'test@test', password: 'testey')
    expect(User.all[0]).to be(nil)
  end

  it 'require a valid password, min 6 max 14 chars' do
    User.create(name: 'test', email: 'test@test.com', password: 'test')
    expect(User.all[0]).to be(nil)
  end
end
