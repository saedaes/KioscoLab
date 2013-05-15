class Administrator < ActiveRecord::Base
  attr_accessible :direccion, :idPuesto, :nombre, :numEmpleado, :telefono
  has_many :puestos
end
