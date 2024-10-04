# == Schema Information
#
# Table name: ventadetalles
#
#  id          :integer          not null, primary key
#  cantidad    :integer
#  precio      :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  producto_id :integer          not null
#  venta_id    :integer          not null
#
# Indexes
#
#  index_ventadetalles_on_producto_id  (producto_id)
#  index_ventadetalles_on_venta_id     (venta_id)
#
# Foreign Keys
#
#  producto_id  (producto_id => productos.id)
#  venta_id     (venta_id => ventas.id)
#
class Ventadetalle < ApplicationRecord
  belongs_to :venta
  belongs_to :producto
end
