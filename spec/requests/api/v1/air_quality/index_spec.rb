require 'rails_helper'

describe "Air Quality API" do
  it "returns a successful response on request" do

    get '/api/v1/air_quality?country=India'

    expect(response).to be_successful
  end
end