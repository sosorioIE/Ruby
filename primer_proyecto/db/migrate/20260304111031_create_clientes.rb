class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|

      t.string :usuario
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
