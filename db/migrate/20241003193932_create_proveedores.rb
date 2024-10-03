class CreateProveedores < ActiveRecord::Migration[7.2]
  def change
    create_table :proveedores do |t|
      t.string :nombres
      t.string :apellidos
      t.string :telefono
      t.string :nit
      t.string :correo
      t.string :direccion

      t.timestamps
    end
  end
end
