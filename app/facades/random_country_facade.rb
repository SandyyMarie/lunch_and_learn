class RandomCountryFacade
  def self.country_randomizer
    country_options = RandomCountryService.country_list
    chosen_country = country_options.sample

    # chosen_country[:name][:common]
  end

  def self.random_country_name
    country_randomizer[:name][:common]
  end

  def self.random_country_lat_long
    country_randomizer[:latlng]
  end
end