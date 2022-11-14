class RandomCountryFacade
  def self.country_randomizer
    country_options = RandomCountryService.country_list
    chosen_country = country_options.sample
    chosen_country[:name][:common]
  end
end