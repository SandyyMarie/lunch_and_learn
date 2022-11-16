require 'rails_helper'

describe "New Favorites Requests" do
  it "adds a new favorite to the user" do

    post '/api/v1/users', params: {
      "name": "Athena Dao",
      "email": "athenadao@bestgirlever.com"
    }

    post '/api/v1/favorites', params: {
    "api_key": "#{User.first.api_key}",
    "country": "thailand",
    "recipe_link": "https://www.tastingtable.com/.....",
    "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
    }

    expect(response).to be_successful
  end

    it "it does NOT add a favorite due to no user with that api_key" do

    post '/api/v1/favorites', params: {
    "api_key": "jgn983hy48thw9begh98h4539h4",
    "country": "thailand",
    "recipe_link": "https://www.tastingtable.com/.....",
    "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
    }

    expect(response).not_to(be_successful)
  end
end
