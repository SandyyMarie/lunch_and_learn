class RecipeFacade
  def self.get_recipes_for_country(country)
    recipes = RecipeService.recipe_search(country)

    recipes[:hits].map do |recipe|
      Recipe.new(recipe, country)
    end.first(10)
  end
end