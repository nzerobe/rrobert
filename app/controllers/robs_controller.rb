class RobsController < ApplicationController
  #Before_action : Set_rob, only: [:new :edit, :show]
  def index
    @robs = Rob.all
  end

  # Add
  def new
  @robs = Rob.new
  end
  def create
    @robs = Rob.new(rob_params)
    if @robs.save
      # Switch to the list screen and display a message saying "You have created new blog!"
      redirect_to robs_path, Notice: "You have created new rob!"
    else
      # Redraw the input form.
     flash[:danger] = 'Login failed'
      render 'new'
    end
  end
  def show
    # 追記する
     @robs = Rob.find(params[:id])
  end
  def edit
     @robs = Rob.find(params[:id])
  end
    
   def update
    @robs = Rob.find(params[:id])
    if @robs.update(rob_params)
      redirect_to robs_path, Notice: "You have edited this rob！"
    else
      render 'edit'
    end
   end
   
  #Omitted
  private
  #Before_action : Set_rob, only: [:show, :edit, :update, :destroy] 
  
   def rob_params
    params.require(:rob).permit(:name, :email, :password,
                                 :password_confirmation)
   end

  
  def set_rob
  @robs = Rob.find(params[:id])
  end
  
  #Omission
  def destroy
    @robs.destroy
    redirect_to robs_path, Notice: "You have deleted the rob!"
  end
  #Omission
  #Omitted
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_path, :notice => 'if you want to add a notice'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
end  