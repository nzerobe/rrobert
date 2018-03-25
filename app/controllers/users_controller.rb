class UsersController < ApplicationController
    def index
    @user = User.all
    end
    
    def new
    @user = User.new
    end
    
    def create
     @user = User.new(user_params)
     #@model = current_user.models.new
     if @user.save
    
     redirect_to new_user_path, notice: "You have created new !"
    else
      render 'new'
     end
    end
    
    
    def show
    @user = User.find(params[:id])
    end
    
    def edit
     @user = User.find(params[:id])
    end
    
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to user_path, Notice: "You have edited this user！"
      else
        render 'edit'
      end
    end
    
    private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
    end
end

#def user_params
  # params.require(:user).permit(:title, :content)
  #   end
     
    #if @user.save
      # Switch to the list screen and display a message saying "You have created new user!"
     # redirect_to users_path, notice: "You have created new user!"
    #else
      # Redraw the input form.
      #render 'new'
    #end
 