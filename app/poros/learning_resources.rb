class LearningResources
  attr_reader :id, :type, :country, :video, :images

  def initialize(search_country, video_data, image_data)
    @id = nil
    @type = "learning_resource"
    @country = search_country
    @video = video_data
    @images = image_data 
  end
end