class ApplicationController < ActionController::Base
  protect_from_forgery
  def index  
    @usu=params[:field1]
    @pass=params[:field2]
    @body = open("http://labs.ti.uach.mx/uach_movil/ldapnew.json?parametro1=#{@usu}&parametro2=#{@pass}").read

    if (@body.eql?("0"))
     flash[:notice] = "There is already an acount for this email. Please Login to create your board."
    end
        
        print "********************************#{@body}*****************************************************"
  end
  
  helper_method :current_user
  
  private
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
end
