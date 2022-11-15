class RandomCountryFacade
   def self.country_randomizer
      country_options = RandomCountryService.country_list
      chosen_country = country_options.sample
   end

   def self.random_country_name
      country_randomizer[:name][:common]
   end

   def self.random_country_lat_long
       country_randomizer[:latlng]
   end

   def self.specific_country_latlong(search_country)
      country_options = RandomCountryService.country_list
      country_coords = country_options.find do |country|
        country[:name][:common] == search_country
      end
      country_coords[:latlng]
   end

   def self.country_exists?(search_country)
      country_options = RandomCountryService.country_list
      country_found = country_options.find do |country|
        country[:name][:common] == search_country
      end

      if country_found == nil
         return false
      elsif country_found != nil
         return true
      end
   end
end