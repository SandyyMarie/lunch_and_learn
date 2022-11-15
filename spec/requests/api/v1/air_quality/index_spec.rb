require 'rails_helper'

describe "Air Quality API" do
  it "returns a successful response on request with country param" do

    get '/api/v1/air_quality?country=India'

    expect(response).to be_successful
  end

  it "can return a successful response on request without country param" do
    get '/api/v1/air_quality'
    expect(response).to be_successful
  end

  it 'will return an error response on request with improper country spelling' do
    get '/api/v1/air_quality?country=Ind'
    expect(response).not_to(be_successful)
  end
end