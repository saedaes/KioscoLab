require 'open-uri'
#encoding: utf-8
class NewsController < ApplicationController
  def index  
    
    if params[:field1] != nil  
      @usu=params[:field1]
      @pass=params[:field2]
      $body = open("http://labs.ti.uach.mx/uach_movil/ldapnew.json?parametro1=#{@usu}&parametro2=#{@pass}").read
    end  
        #print "********************************#{@body}*****************************************************"
        #sleep(10)
    
    spreadsheet = Roo::Csv.new('app/Clima20130101.csv', nil, :ignore)
    position = spreadsheet.last_row
    @datosClima = spreadsheet.row(position)
   
    #Verificamos si el boton se salir fue presionado, en caso de ser cierto se vacia la variable que almacena el nombre de usuario
    if params[:boton_salir]
      $body = nil
    end
  
    if params[:acomodar_publicacion]
      EspecialNew.destroy_all
      @publicacion1 = EspecialNew.new
      @publicacion2 = EspecialNew.new
      @publicacion3 = EspecialNew.new
      
      @publicacion1.publicacion_id = params[:new1]
      @publicacion1.id = 1
      @publicacion2.publicacion_id = params[:new2]
      @publicacion2.id = 2
      @publicacion3.publicacion_id = params[:new3]
      @publicacion3.id = 3
      
      @publicacion1.save
      @publicacion2.save
      @publicacion3.save
    end
    
    @clima = Weather.last
  end
end