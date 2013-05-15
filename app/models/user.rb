class User < ActiveRecord::Base
  attr_accessible :address, :password, :email, :idPuesto, :password_confirmation, :persistence_token, :phone_number, :user_number, :username, :name
  acts_as_authentic
  has_one :puesto
  has_many :publications
  has_many :registries
  
  validates :address, :password, :email, :idPuesto, :password_confirmation, :persistence_token, :phone_number, :user_number, :username, :name, :presence => {:message => 'No dejes ningun campo vacio vacio'} 
end
