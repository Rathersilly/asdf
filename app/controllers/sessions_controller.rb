class SessionsController < ApplicationController
  def new

  end
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    p @user
    if @user && @user.authenticate(params[:session][:password])
      flash[:success] = "Logged #{@user} in!"
      log_in(@user)
      redirect_to root_url
    elsif !@user
      flash[:warning] = "No such user found"
      render 'new'
    else
      flash[:warning] = "Incorrect Password"
      render 'new'
    end

  end
  def destroy
  end
end
