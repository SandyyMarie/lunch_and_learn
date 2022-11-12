class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :type
      t.string :title
      t.string :url
      t.string :country
      t.string :img

      t.timestamps
    end
  end
end
