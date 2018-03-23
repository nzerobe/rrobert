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
    
      redirect_to user_index(@user.id)
    else
      render 'new'
     end
    end
    
    def show
    @user = User.find(params[:id])
    end
    
    private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
    end
end
