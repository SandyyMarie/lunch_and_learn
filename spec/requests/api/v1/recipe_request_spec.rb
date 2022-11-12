require 'rails_helper'

describe "Recipes API" do
  it "sends a list of recipes" do
    create_list(:recipes, 3)

    get '/api/v1/recipes'

    expect(response).to be_successful
  end
end