class AirQualityService

  def self.aq_for_country(lat,long)
    response = conn.get("/data/2.5/air_pollution?lat=#{lat}&lon=#{long}") 
    parse(response)
  end

  private

  def self.conn
    Faraday.new("http://api.openweathermap.org", params:{
      appid: ENV['appid']})
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end