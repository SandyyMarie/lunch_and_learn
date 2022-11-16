require 'rails_helper'

RSpec.describe 'Learning Resources Service' do
  it 'returns youtube video info for a country', :vcr do
    country = "laos"
    country_vid = LearningResourcesService.youtube(country)

    expect(country_vid).to be_an(Hash)
   
    expect(country_vid[:items][0][:snippet][:title]).to be_a(String)
    expect(country_vid[:items][0][:id][:videoId]).to be_a(String)
  end

  it 'returns pictures based on country search', :vcr do
    country = "Canada"

    country_pics = LearningResourcesService.images(country)
    expect(country_pics).to be_a(Hash)
  end
end