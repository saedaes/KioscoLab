class Consultation < ActiveRecord::Base
  attr_accessible :fecha_consulta, :id_publicacion, :matricula
  
  belongs_to :publication
end
