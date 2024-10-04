json.extract! venta, :id, :cliente_id, :vendedor_id, :fecha, :total, :created_at, :updated_at
json.url venta_url(venta, format: :json)
