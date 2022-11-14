require 'rails_helper'

RSpec.describe 'Random Country Facade', :vcr do
  it '#country_randomizer' do
    country = RandomCountryFacade.country_randomizer

    expect(country).to be_an(String)
  end

end