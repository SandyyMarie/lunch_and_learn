require 'rails_helper'

RSpec.describe 'Tourist Sights Service' do
  it 'returns Tourist Sights API', :vcr do
    lat = -41.0
    long = 174.0
    sites = TouristSightService.tourist_info(long, lat) #made singular service name - replace new zealand with latlong coords
    require 'pry'; binding.pry
    expect(sites).to be_an(Hash)
    sites.each do |location|
      expect(location[:attributes][:name]).to be_a(String)
      expect(location[:attributes][:address]).to be_a(String) 
      expect(location[:attributes][:place_id]).to be_a(String) 
    end
  end
end