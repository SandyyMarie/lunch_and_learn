class LearningResourcesService

  def self.youtube(search_country)
    response = yt_conn.get('/youtube/v3/search') do |f|
        f.params['part'] = "snippet"
        f.params['channelId'] = "UC4a-Gbdw7vOaccHmFo40b9g"
        f.params['maxResults'] = 1
        f.params['q'] = search_country
    end
    parse(response)
  end

  def self.images(search_country)
    response = img_conn.get('/search/photos') do |f|
      f.params['query'] = search_country
    end
    parse(response)
  end

  private

  def self.yt_conn
    Faraday.new("https://www.googleapis.com", params:{
      key: ENV['key'], part: "snippet", channelId: "UC2ri4rEb8abnNwXvTjg5ARw" }) #khan academy
  end

  def self.img_conn
    Faraday.new("https://api.unsplash.com/", params:{
      client_id: ENV['client_id']}) #Unsplash Devs
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end