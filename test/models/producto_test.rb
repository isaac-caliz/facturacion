# == Schema Information
#
# Table name: productos
#
#  id           :integer          not null, primary key
#  descripcion  :text
#  nombre       :string
#  precio       :decimal(, )
#  stock        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  proveedor_id :integer          not null
#
# Indexes
#
#  index_productos_on_proveedor_id  (proveedor_id)
#
# Foreign Keys
#
#  proveedor_id  (proveedor_id => proveedores.id)
#
require "test_helper"

class ProductoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
