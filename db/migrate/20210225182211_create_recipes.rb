class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :prep_time
      t.string :cooking_time
      t.string :ingredients
      t.string :directions
      t.string :image
      t.string :servings

      t.timestamps
    end
  end
end
