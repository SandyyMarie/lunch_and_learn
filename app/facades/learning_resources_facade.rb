class LearningResourcesFacade
   def self.country_video(search_country)
      video_results = LearningResourcesService.youtube(search_country)
      pulled_data = {
        title: video_results[:items][0][:snippet][:title],
        youtube_video_id: video_results[:items][0][:id][:videoId]
      }
   end

   def self.country_images(search_country)
      image_results = LearningResourcesService.images(search_country)

      pulled_data = image_results[:results].map do |img|
        { alt_tag: img[:alt_description],
          url: img[:urls][:raw]
        }
      end
   end

   def self.new_resource(search_country)
    video = country_video(search_country)
    images = country_images(search_country)
    LearningResources.new(search_country, video, images)
   end

end