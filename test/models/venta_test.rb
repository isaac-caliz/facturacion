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
require "test_helper"

class VentaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
