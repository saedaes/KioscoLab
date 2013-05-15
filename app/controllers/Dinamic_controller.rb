class DinamicController < ApplicationController
  def index  
   respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clasifications }
    end
  end
end