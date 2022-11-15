require 'rails_helper'

RSpec.describe 'Air Quality Facade', :vcr do
  it '#air_quality_for_country' do
    country = "India"
    aq = AirQualityFacade.air_quality_for_country(country)
    
    expect(aq).to be_a(AirQuality)
  end

end