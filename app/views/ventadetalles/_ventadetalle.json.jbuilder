json.extract! ventadetalle, :id, :venta_id, :producto_id, :cantidad, :precio, :created_at, :updated_at
json.url ventadetalle_url(ventadetalle, format: :json)
