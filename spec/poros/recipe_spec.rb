require 'rails_helper'

RSpec.describe Recipe do
  it 'has attributes' do
    data = { id: nil,
      type: 'recipe',
      recipe: {
        label: "Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)",
        url: "https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html",
        country: "thailand",
        image: "https://edamam-product-images.s3.amazonaws.com..."
      }
    }

    recipe = Recipe.new(data, data[:recipe][:country])

    expect(recipe.id).to eq(nil)
    expect(recipe.type).to eq("recipe")
    expect(recipe.title).to eq("Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)")
    expect(recipe.url).to eq("https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html")
    expect(recipe.country).to eq("thailand")
    expect(recipe.img).to eq("https://edamam-product-images.s3.amazonaws.com...")
  end
end