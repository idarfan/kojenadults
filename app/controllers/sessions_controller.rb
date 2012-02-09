# encoding: utf-8
class SessionsController < ApplicationController
  skip_before_filter :authorize  
  def new
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, :alert => "無效的使用者名稱Invalid user/無效的密碼組password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to main_url, :notice => "Logged out"
  end
end