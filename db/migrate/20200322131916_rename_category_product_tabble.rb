class RenameCategoryProductTabble < ActiveRecord::Migration[6.0]
  def change
    rename_table :category_products, :CategoryProducts
  end
end
