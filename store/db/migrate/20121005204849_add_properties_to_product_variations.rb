class AddPropertiesToProductVariations < ActiveRecord::Migration
  def change
    add_column :product_variations, :properties, :text
  end
end
