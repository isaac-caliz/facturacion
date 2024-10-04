# == Schema Information
#
# Table name: ventas
#
#  id          :integer          not null, primary key
#  fecha       :date
#  total       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cliente_id  :integer          not null
#  vendedor_id :integer          not null
#
# Indexes
#
#  index_ventas_on_cliente_id   (cliente_id)
#  index_ventas_on_vendedor_id  (vendedor_id)
#
# Foreign Keys
#
#  cliente_id   (cliente_id => clientes.id)
#  vendedor_id  (vendedor_id => vendedores.id)
#
class Venta < ApplicationRecord
  belongs_to :cliente
  belongs_to :vendedor
  def to_s
    "#{fecha} - Cliente: #{cliente.nombres} #{cliente.apellidos}, Vendedor: #{vendedor.nombre} #{vendedor.apellido}"
  end
end
