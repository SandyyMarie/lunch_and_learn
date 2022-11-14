require 'rails_helper'

RSpec.describe 'Random Country Service' do
  it 'returns Random Country from Counteries API', :vcr do

    all_countries = RandomCountryService.country_list
    expect(all_countries).to be_an(Array)
    all_countries.each do |country|
      expect(country[:name][:common]).to be_a(String)
    end
  end
end