class RecipeService

  def self.recipe_search(search_country)
    response = conn.get("api/recipes/v2/?type=public&q=#{search_country}") #, {country: search_country}
    parse(response)
  end

  private

  def self.conn
    Faraday.new("https://api.edamam.com", params:{
      app_id: ENV['app_id'],
      app_key: ENV['app_key']})
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end