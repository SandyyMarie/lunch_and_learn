    require 'rails_helper'

    RSpec.describe 'Recipe Facade', :vcr do
      it '#get_recipes_for_country' do
        country = "Thailand"
        recipes = RecipeFacade.get_recipes_for_country(country)

        expect(recipes).to be_an(Array)

        recipes.each do |recipe|
          expect(recipe).to be_a(Recipe)
        end
      end

    end