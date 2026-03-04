class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :name
      t.text :description
      t.integer :reference
      t.decimal :price

      t.timestamps
    end
  end
end
