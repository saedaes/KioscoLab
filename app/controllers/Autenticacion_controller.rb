require 'open-uri'
class AutenticacionController < ApplicationController
  def inicio 
   respond_to do |format|
      format.html # new.html.erb
    end
  end
end