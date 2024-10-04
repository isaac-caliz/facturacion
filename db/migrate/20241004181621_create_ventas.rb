class CreateVentas < ActiveRecord::Migration[7.2]
  def change
    create_table :ventas do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :vendedor, null: false, foreign_key: true
      t.date :fecha
      t.decimal :total

      t.timestamps
    end
  end
end
