# encoding: utf-8
class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery
   def js(*js_s)
    @js ||= []
    js_s.each do |js_name|
      @js << js_name unless @js.include?(js_name)
    end
  end
  def css(*css_s)
    @css ||= []
    css_s.each do |css_name|
      @css << css_name unless @css.include?(css_name)
    end
  end
  
  def current_user
    if session[:user_id]
      @current_user ||= User.first(:conditions => ["id = ?" , session[:user_id]])
      if @current_user
        return @current_user
      else
        session[:user_id] = nil
        return nil
      end
    else
      return nil
    end
  end
#modify by idar 2012/3/29  
  def user_level1(level = 1)
    if current_user
      if current_user.level <= level
        return true
      else
        redirect_to :controller => "kojenadults", :action => "index", :notice => "您的權限不足，未被授權允許進行此操作"
        return false
      end
    else       
      redirect_to :controller => "kojenadults" , :action => "index"
      return false
    end
  end
  
  def user_level2 (level = 2)
    if current_user
      if current_user.level <= level
        return true
      else
        redirect_to :controller => "kojenadults" , :action => "index"
        return false
      end
    else
      redirect_to :controller => "kojenadults" , :action => "index"
      return false
    end
  end
  # for users account maintain
  def users_level1(level = 1)
    if current_user
      if current_user.level <= level
        return true
      else
        redirect_to :controller => "users", :action => "index", :notice => "您的權限不足，未被授權允許進行此操作"
        return false
      end
    else       
      redirect_to :controller => "users" , :action => "index"
      return false
    end
  end
  # for users account maintain
  def users_level2(level = 2)
    if current_user
      if current_user.level <= level
        return true
      else
        redirect_to :controller => "users", :action => "index", :notice => "您的權限不足，未被授權允許進行此操作"
        return false
      end
    else       
      redirect_to :controller => "users" , :action => "index"
      return false
    end
  end
  
  protected
  
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, :notiec => "Pleases log in "
      end
    end
end