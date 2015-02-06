class CreatePurchaseCatalogs < ActiveRecord::Migration
  def change
    create_table :purchase_catalogs do |t|
      t.string :product_name
      t.integer :price
      t.string :picture
      t.integer :quantity_purchased
      t.string :place_of_purchase
      t.text :location_of_use

      t.timestamps
    end
  end
end
