class CreateFavGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :fav_goods do |t|
      t.integer :goods_id
      t.integer :user_id
      t.string :note

      t.timestamps
    end
  end
end
