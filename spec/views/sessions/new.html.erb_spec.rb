require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do

  it "has a request.fullpath that is defined" do
    expect(controller.request.fullpath).to eq '/login'
  end

  # it "displays all the widgets" do
  #   # assign(:users, [
  #   #   User.create!(name: "test", email: 'test@test.com', password: 'testey')
  #   # ])
  #   # ,
  #   #   Widget.create!(:name => "dicer")
  #   # ])

  #   render

  #   expect(rendered).to match /HTML/
  #   # expect(rendered).to match /dicer/
  # end
end
