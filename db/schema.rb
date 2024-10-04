# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_04_141929) do
  create_table "clientes", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "telefono"
    t.string "nit"
    t.string "correo"
    t.text "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.decimal "precio"
    t.integer "stock"
    t.integer "proveedor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proveedor_id"], name: "index_productos_on_proveedor_id"
  end

  create_table "proveedores", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "telefono"
    t.string "nit"
    t.string "correo"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "productos", "proveedores"
end
