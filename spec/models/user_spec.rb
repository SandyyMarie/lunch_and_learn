require 'rails_helper'

 RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:api_key) }
    it { should validate_uniqueness_of(:api_key) }
  end

  describe 'relationships' do
    it {should have_many(:favorites)}
  end

  it 'will return a randomly generator' do
    generated_key = User.api_generator
    expect(generated_key).to be_a(String)
  end
end