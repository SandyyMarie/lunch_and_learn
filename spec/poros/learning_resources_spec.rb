require 'rails_helper'

RSpec.describe LearningResources do
  it 'has attributes' do
    search_country = "Canada"
    video_data = {:title=>"Native American societies before contact | Period 1: 1491-1607 | AP US History | Khan Academy", :youtube_video_id=>"Ht0FW7RwRmc"}
    image_data = [{:alt_tag=>"red road bike beside red and white wooden maple leaf painted wall", :url=>"https://images.unsplash.com/photo-1517949908114-71669a64d885?ixid=MnwzODExMzJ8MHwxfHNlYXJjaHwxfHxDYW5hZGF8ZW58MHx8fHwxNjY4NTkwOTc0&ixlib=rb-4.0.3"}]

    new_resource = LearningResources.new(search_country, video_data, image_data)
    
    expect(new_resource.id).to eq(nil)
    expect(new_resource.type).to eq("learning_resource")
    expect(new_resource.country).to eq("Canada")
    expect(new_resource.video).to eq({:title=>"Native American societies before contact | Period 1: 1491-1607 | AP US History | Khan Academy", :youtube_video_id=>"Ht0FW7RwRmc"})
    expect(new_resource.images).to eq([{:alt_tag=>"red road bike beside red and white wooden maple leaf painted wall", :url=>"https://images.unsplash.com/photo-1517949908114-71669a64d885?ixid=MnwzODExMzJ8MHwxfHNlYXJjaHwxfHxDYW5hZGF8ZW58MHx8fHwxNjY4NTkwOTc0&ixlib=rb-4.0.3"}])
  end
end