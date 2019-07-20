require 'rails_helper'

RSpec.describe InstagramController, type: :controller do

  it 'get to the index page and render index.html' do
    get :index
    expect(response).to render_template(:index)
  end 

  it 'get to the index page with a successful response' do
    get :index
    expect(response).to have_http_status(200)
  end 
end
