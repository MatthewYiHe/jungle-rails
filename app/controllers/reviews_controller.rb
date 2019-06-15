class ReviewsController < ApplicationController

  def create
    puts "----------------------#{params[:review][:star]},#{params[:product_id]}------------------"
    create_review
  end

  def create_review
    if session[:user_id]
      review = Review.new(
        user_id: session[:user_id],
        product_id: params[:product_id],
        rating: params[:review][:star],
        comment: params[:review][:comment]
      )
      if review.save
        redirect_to :back, success: 'Thank you for your comment'
      else
        redirect_to :back, warning: 'Please fill in all required fields'
      end
    else
      redirect_to :back, warning: 'Please login first'
    end
  end

end
