require 'rails_helper'

describe "Favorites API" do
  it "sends a list of favorites" do
    create_list(:favorites, 3)

    post '/api/v1/favorites'

    expect(response).to be_successful
  end
end