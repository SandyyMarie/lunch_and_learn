require 'rails_helper'

describe "Places API" do
  it "returns a list of tourist_sights" do

    get '/api/v1/tourist_sights?country=France'
    expect(response).to be_successful
  end
end