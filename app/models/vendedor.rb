# == Schema Information
#
# Table name: vendedores
#
#  id                 :integer          not null, primary key
#  apellido           :string
#  correo             :string
#  fecha_contratacion :date
#  nombre             :string
#  telefono           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Vendedor < ApplicationRecord
  def to_s
    nombre + " " + apellido
  end
end
