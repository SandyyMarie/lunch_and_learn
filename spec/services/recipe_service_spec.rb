require 'rails_helper'

RSpec.describe 'Recipes Service' do
  it 'returns Recipes API', :vcr do
    recipes = RecipesService.get_recipes
    expect(recipes).to be_an(Array)
    require 'pry'; binding.pry
    recipes.each do |recipes|
      expect(recipes).to have_key(:id)
      expect(recipes[:id]). to be_a String
      expect(recipes[:attributes]).to have_key(:name)
      expect(recipes[:attributes][:name]).to be_a String
    end
  end
end