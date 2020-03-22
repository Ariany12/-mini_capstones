class RenamecategoryproductTabble < ActiveRecord::Migration[6.0]
  def change
    rename_table :CategoryProducts, :categoryproducts
  end
end
