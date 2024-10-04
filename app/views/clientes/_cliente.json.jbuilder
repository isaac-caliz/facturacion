json.extract! cliente, :id, :nombres, :apellidos, :telefono, :nit, :correo, :direccion, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
