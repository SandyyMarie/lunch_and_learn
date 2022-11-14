require 'rails_helper'

describe "Recipes API" do
  it "sends a list of recipes" do

    get '/api/v1/recipes?country=thailand'

    expect(response).to be_successful

    recipes = JSON.parse(response.body)
  end
end