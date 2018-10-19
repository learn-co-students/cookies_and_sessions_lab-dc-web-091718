
class ProductsController < ApplicationController
  def index
    # binding.pry unless cart
    # puts cart.to_s
    @cart=cart
    render :index
  end

  def add
    session[:cart] << params[:product]
    # binding.pry unless cart
    # puts cart.to_s
    @cart=cart
    render :index
  end
end
