json.extract! proveedor, :id, :nombres, :apellidos, :telefono, :nit, :correo, :direccion, :created_at, :updated_at
json.url proveedor_url(proveedor, format: :json)
