class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @reviews = @product.reviews.to_a.reverse
    @current_id = current_user.id
    @current_username = current_user.first_name
    puts "-----------------------#{@reviews}"
  end

end
