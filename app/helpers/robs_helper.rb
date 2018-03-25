module RobsHelper
  def current_rob
    #@_current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
    @current_rob ||= Rob.find_by(id: session[:rob_id])
    #@model = current_user.models.new
    end
    def logged_in?
    !current_rob.nil?
    end
    def force_login
         if logged_in?
             redirect_to_session_path
         end
    end    
end
