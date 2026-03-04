class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellidos
      t.text :direccion
      t.integer :nif

      t.timestamps
    end
  end
end
