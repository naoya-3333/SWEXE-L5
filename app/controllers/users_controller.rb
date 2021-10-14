class UsersController < ApplicationController
  def index
    @user=User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    
    @user = User.new(uid: params[:user][:uid],age: params[:user][:age])
    @user.pass = BCrypt::Password.create(params[:pass])
    if @user.save
      redirect_to root_path
    else
      render 'create_faled'
    end
    
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end
end
