require 'rails_helper'

RSpec.describe 'Random Country Facade', :vcr do
    it '#country_randomizer' do
      country = RandomCountryFacade.country_randomizer
      expect(country).to be_a(Hash)
    end

    it '#random_country_name' do
      country = RandomCountryFacade.random_country_name
      expect(country).to be_an(String)
    end

    it '#random_country_lat_long' do
      country_coords = RandomCountryFacade.random_country_lat_long
      expect(country_coords).to be_a(Array)
    end

    it '#specific_country_latlong' do
      lat_lng = RandomCountryFacade.specific_country_latlong("New Zealand")
      expect(lat_lng).to be_a(Array)
    end
end