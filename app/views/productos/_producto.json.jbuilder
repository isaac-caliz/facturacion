json.extract! producto, :id, :nombre, :descripcion, :precio, :stock, :proveedor_id, :created_at, :updated_at
json.url producto_url(producto, format: :json)
