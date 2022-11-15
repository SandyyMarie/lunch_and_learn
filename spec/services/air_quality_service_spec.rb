require 'rails_helper'

RSpec.describe 'Air Quality Service' do
  it 'Returns Air Quality for given location', :vcr do
  
    lat_long = RandomCountryFacade.specific_country_latlong("India")
    current_aq = AirQualityService.aq_for_country(lat_long[0],lat_long[1])

    expect(current_aq).to be_a(Hash)

    expect(current_aq[:list][0][:main][:aqi]).to be_an(Integer)
    expect(current_aq[:list][0][:dt]).to be_an (Integer)
  end
end