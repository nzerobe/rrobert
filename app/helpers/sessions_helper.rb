module SessionsHelper
    def current_user
    #@_current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
    @current_user ||= User.find_by(id: session[:user_id])
    #@model = current_user.models.new
    end
    def logged_in?
    !current_user.nil?
    end
    def force_login
         if logged_in?
             redirect_to_session_path
         end
     end    
   
end
