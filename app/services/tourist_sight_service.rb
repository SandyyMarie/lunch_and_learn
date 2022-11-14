class TouristSightService

  def self.tourist_info(lat, long)
    response = conn.get('/v2/places?') do |f|
      f.params['circle'] = [long, lat, 20000] #might need to concatinate 
    end
    parse(response)
  end

  private

  def self.conn
    Faraday.new("https://api.geoapify.com", params:{
      apiKey: ENV['apiKey']})
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end