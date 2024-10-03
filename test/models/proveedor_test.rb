# == Schema Information
# Schema version: 20241003193932
#
# Table name: proveedores
#
#  id         :integer          not null, primary key
#  apellidos  :string
#  correo     :string
#  direccion  :string
#  nit        :string
#  nombres    :string
#  telefono   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ProveedorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
