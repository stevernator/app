class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
  
  private
  
  def current_shop
    Shop.find(session[:shop_id])
  rescue ActiveRecord::RecordNotFound
    shop = Shop.create
    session[:shop_id] = shop.id
    shop
  end
end
