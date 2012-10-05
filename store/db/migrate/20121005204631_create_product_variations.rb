class CreateProductVariations < ActiveRecord::Migration
  def change
    create_table :product_variations do |t|
      t.integer :product_id
      t.string :name
      t.decimal :price, :precision => 7, :scale => 2

      t.timestamps
    end
    add_index :product_variations, :product_id
  end
end
