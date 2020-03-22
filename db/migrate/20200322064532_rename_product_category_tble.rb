class RenameProductCategoryTble < ActiveRecord::Migration[6.0]
  def change
    rename_table :product_categories, :category_products
  end
end
