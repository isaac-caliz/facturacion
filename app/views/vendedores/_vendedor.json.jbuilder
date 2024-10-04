json.extract! vendedor, :id, :nombre, :apellido, :telefono, :correo, :fecha_contratacion, :created_at, :updated_at
json.url vendedor_url(vendedor, format: :json)
