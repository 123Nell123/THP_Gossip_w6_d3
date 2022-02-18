class UsersController < ApplicationController
  # def index
  #   @users = User.all
  # end

  # def show
  #   @user = User.find(params[:id])
  # end

  def new
    @user = User.new
  end

  def create
    puts "*"*60
    @user = User.new(
      'first_name' => params[:first_name],
      'last_name' => params[:last_name],
      'city_id' => City.all.sample.id,
      'login' => params[:login],
      'password_digest' => params[:password],
      'email' => params[:email])

    
        if @user.save    
        flash[:user_success] = "😸youpi compte cree pour  #{@user.first_name}" 
     
         redirect_to root_path  # repasse par le controleur
        else
         render ('new_path') 
        end
    # user = User.create(post_params)   # post_params ???
    # redirect_to user_path(user.id)
  end

  # def edit
  #   @user = User.find(params[:id])
  # end

#   def update
#     @user = User.find(params[:id])
#     @user.update(post_params)
#     redirect_to users.path
#   end

#   def destroy
#     @user = User.find(params[:id])
#     @user.destroy
#     redirect_to users.path
#   end

#  private 
#  def post_params
#   # params.require(:user).permit(:name, :slug)
#   params.require(:user).permit(:first_name)
#  end

end
