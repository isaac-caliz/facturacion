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

ActiveRecord::Schema[7.2].define(version: 2024_10_07_185039) do
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

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendedores", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "correo"
    t.date "fecha_contratacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ventadetalles", force: :cascade do |t|
    t.integer "venta_id", null: false
    t.integer "producto_id", null: false
    t.integer "cantidad"
    t.decimal "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_ventadetalles_on_producto_id"
    t.index ["venta_id"], name: "index_ventadetalles_on_venta_id"
  end

  create_table "ventas", force: :cascade do |t|
    t.integer "cliente_id", null: false
    t.integer "vendedor_id", null: false
    t.date "fecha"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_ventas_on_cliente_id"
    t.index ["vendedor_id"], name: "index_ventas_on_vendedor_id"
  end

  add_foreign_key "productos", "proveedores"
  add_foreign_key "ventadetalles", "productos"
  add_foreign_key "ventadetalles", "ventas"
  add_foreign_key "ventas", "clientes"
  add_foreign_key "ventas", "vendedores"
end
