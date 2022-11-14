require 'rails_helper'

RSpec.describe 'Recipes Service' do
  it 'returns Recipes API', :vcr do
    recipes = RecipeService.recipe_search("thailand")
    expect(recipes).to be_an(Hash)
    recipes[:hits].each do |recipe|
      expect(recipe[:recipe][:label]).to be_a(String)
      expect(recipe[:recipe][:url]).to be_a(String) 
      expect(recipe[:recipe][:image]).to be_a(String) 
    end
  end
end