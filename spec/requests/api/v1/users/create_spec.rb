require 'rails_helper'

describe "Users Requests" do
  it "returns a newly created user and API key" do

    post '/api/v1/users', params: {
      "name": "Athena Dao",
      "email": "athenadao@bestgirlever.com"
    }

    expect(response).to be_successful
  end
end
