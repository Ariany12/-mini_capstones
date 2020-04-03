class DeleteCollumnSupplyTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :suppliers, :string,  :string 
  end
end
