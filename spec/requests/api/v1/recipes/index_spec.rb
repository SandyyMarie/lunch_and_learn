require 'rails_helper'

describe "Recipes API" do
  it "returns a list of recipes" do

    get '/api/v1/recipes?country=thailand'

    expect(response).to be_successful
  end

  it "choses a random country and returns a list of recipes" do

    get '/api/v1/recipes'

    expect(response).to be_successful
  end

  it 'returns an empty data set if you send in an empty string' do
    empty_string = "\"\""
    get "/api/v1/recipes?country=#{empty_string}"
    expect(response.body).to eq("{\"data\":[]}")
  end
end