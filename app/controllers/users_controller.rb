class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    user = params[:user]
    @user = User.new(name: user[:name],
                     email: user[:email],
                     password: user[:password],
                     password_confirmation: user[:password_confirmation])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user 
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
