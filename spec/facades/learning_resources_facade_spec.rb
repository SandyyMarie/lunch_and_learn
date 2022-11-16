require 'rails_helper'

RSpec.describe 'Learning Resources Facade', :vcr do
    it '#country_video' do
      country = "Canada"
      country_vid_info = LearningResourcesFacade.country_video(country)
      expect(country_vid_info).to be_a(Hash)
    end

    it "#country_images" do
      country = "Canada"
      country_pic_info = LearningResourcesFacade.country_images(country)
      expect(country_pic_info).to be_a(Array)
    end

    it '#new_resource' do
      country = "Canada"
      new_object = LearningResourcesFacade.new_resource(country)
      expect(new_object).to be_a(LearningResources)#might need to rewrite expectation
    end

end