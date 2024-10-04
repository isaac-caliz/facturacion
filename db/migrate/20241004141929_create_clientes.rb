class CreateClientes < ActiveRecord::Migration[7.2]
  def change
    create_table :clientes do |t|
      t.string :nombres
      t.string :apellidos
      t.string :telefono
      t.string :nit
      t.string :correo
      t.text :direccion

      t.timestamps
    end
  end
end
