class Subject < ActiveRecord::Base
  attr_accessible :idClasificacion, :nombre
  
  belongs_to :clasification
end
