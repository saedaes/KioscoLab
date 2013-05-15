class Registry < ActiveRecord::Base
  attr_accessible :actividad_id, :hora_login, :hora_logout, :user_number
  
  has_many :activities
end
