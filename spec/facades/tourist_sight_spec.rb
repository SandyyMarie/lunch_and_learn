require 'rails_helper'

RSpec.describe 'Tourist Sights Facade', :vcr do
  it '#sights_for_country' do
    country = "New Zealand"
    sightes = TouristSightFacade.sights_for_country(country)
    expect(sightes).to be_a(Hash)
  end

end