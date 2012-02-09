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
  
  def user_level(level = 3)
    if current_user
      if current_user.level >= level
        return true
      else
        redirect_to :controller => "students" , :action => "index"
        return false
      end
    else
      redirect_to :controller => "students" , :action => "index"
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