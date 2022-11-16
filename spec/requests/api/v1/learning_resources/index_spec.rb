require 'rails_helper'

describe "Learning Resources" do
  it "Get Learning Resources for a Particular Country" do

    get '/api/v1/learning_resources?country=laos'

    expect(response).to be_successful
  end
end