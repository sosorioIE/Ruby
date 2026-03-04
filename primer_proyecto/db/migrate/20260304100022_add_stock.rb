class AddStock < ActiveRecord::Migration[5.1]
  def change 
    add_column :productos, :stock, :integer
  end
end
