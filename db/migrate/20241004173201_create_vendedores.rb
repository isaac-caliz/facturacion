class CreateVendedores < ActiveRecord::Migration[7.2]
  def change
    create_table :vendedores do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :correo
      t.date :fecha_contratacion

      t.timestamps
    end
  end
end
