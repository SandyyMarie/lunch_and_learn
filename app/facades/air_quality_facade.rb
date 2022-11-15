class AirQualityFacade
   def self.air_quality_for_country(country)
      lat_long = RandomCountryFacade.specific_country_latlong(country)
      current_aq = AirQualityService.aq_for_country(lat_long[0],lat_long[1])
      AirQuality.new(current_aq)
   end
end