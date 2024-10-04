# == Schema Information
#
# Table name: clientes
#
#  id         :integer          not null, primary key
#  apellidos  :string
#  correo     :string
#  direccion  :text
#  nit        :string
#  nombres    :string
#  telefono   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
