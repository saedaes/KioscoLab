class Activity < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  
  belongs_to :registry
end
