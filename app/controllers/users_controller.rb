class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create, :login]
  
 

  def index 
    users = User.all 
    render json: users 
  end 

  #Logged in user can see their profile
  def profile
    render json: {user: UserSerializer.new(current_user)}, status: :accepted
  end

  def show
    user=User.find(params[:id])
    render json: user
  end 

  def create 
    @user=User.create(user_params)
      if @user.valid?
        #JWT sends the token here from Application Controller
        #Comment token and render out if raises an error
        token=encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: token} 
      else
        render json: {error: @user.errors.full_messages}, status: :not_acceptable
      end 
  end 

  def login 
    @user =User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
       #JWT authentication here comes from Application Controller
      token=encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: token, success: 'Welcome back!'} 
    else
      render json: {error: "Invalid Username or Password. Please Try Again."}, status: :unauthorized
    end 
  end 


  def update 
    @user = User.find(params[:id])
    @user.update(edit_params)
      if @user.valid?
          token = encode_token({ user_id: @user.id })
          render json: { user: UserSerializer.new(@user), token: token}, notice: 'User was successfully updated.'
      else
          render json: { error: 'Failed to edit user' }, status: :not_acceptable
      end
  end 

  def destroy
    user = User.find(params[:id])
    if user.destroy
      render json: {message: "Successfully deleted user"}
    else
      render json: {error: "Something went wrong"}
    end
  end
    

  private 

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :email, :name, :location, :bio, :picture)
  end 

  def edit_params
    params.require(:user).permit(:password, :password_confirmation, :name, :location, :bio, :picture)
  end   

end
