class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :reference
      t.decimal :precio

      t.timestamps
    end
  end
end
