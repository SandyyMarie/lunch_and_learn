class User < ApplicationRecord
  has_many :favorites
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :api_key, presence: true, uniqueness: true

  def self.api_generator
    Faker::Internet.password
  end
end