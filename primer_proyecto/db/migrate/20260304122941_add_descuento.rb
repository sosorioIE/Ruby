class AddDescuento < ActiveRecord::Migration[5.1]
  def change
    add_column :productos, :descuento, :decimal
  end
end
