class TouristSightFacade
  def self.sights_for_country(country)
    country_coords = RandomCountryFacade.specific_country_latlong(country)
    require 'pry'; binding.pry
    sights = TouristSightService.tourist_info(country_coords)

    recipes[:hits].map do |recipe|
      Recipe.new(recipe, country)
    end
  end
end