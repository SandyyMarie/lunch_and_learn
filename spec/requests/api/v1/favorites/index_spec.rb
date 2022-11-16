require 'rails_helper'

describe "New Favorites Index Requests" do

  it "adds a new favorite to the user" do
    user_1 = create(:user)
    user_1.favorites.create

    get '/api/v1/favorites', params: {
    "api_key": "#{user_1.api_key}"
}
    expect(response).to be_successful
  end

end
