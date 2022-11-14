class RandomCountryService

  def self.country_list
    response = conn.get
    parse(response)
  end

  private

  def self.conn
    Faraday.new("https://restcountries.com/v3.1/all")
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end