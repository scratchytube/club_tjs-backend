class CreateFavRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :fav_recipes do |t|
      t.integer :recipe_id
      t.integer :user_id
      t.string :note

      t.timestamps
    end
  end
end
