class Publication < ActiveRecord::Base
  attr_accessible :clasificacion, :contenido, :imagen, :numEmpleado, :titulo
  
  belongs_to :user
  has_one :clasification
  has_many :consultations
end
