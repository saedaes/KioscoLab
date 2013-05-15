class Puesto < ActiveRecord::Base
  attr_accessible :Descripcion, :Nombre, :idPuesto
  
  belongs_to :administrator
  belongs_to :user
  
  validates :Descripcion, :Nombre, :idPuesto, :presence => {:message => 'No puede ser vacio'} 
end
