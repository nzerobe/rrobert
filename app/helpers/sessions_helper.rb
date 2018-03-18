module SessionsHelper
    def current_user
    @_current_user ||= session[:current_user_id] && Rob.find(session[:current_user_id])
    #@current_rob ||= Rob.find_by(id: session[:rob_id])
    #@model = current_user.models.new
    end
    def logged_in?
    !current_user.nil?
    end
   
end
