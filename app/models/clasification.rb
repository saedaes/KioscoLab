class Clasification < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  
  has_many :publications
  has_many :subjects
end
