class AdminController < ApplicationController
  skip_before_filter :authorize
  def index
    @users = User.all
    @total_users = User.count
  end
end