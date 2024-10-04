class CreateVentadetalles < ActiveRecord::Migration[7.2]
  def change
    create_table :ventadetalles do |t|
      t.references :venta, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true
      t.integer :cantidad
      t.decimal :precio

      t.timestamps
    end
  end
end
