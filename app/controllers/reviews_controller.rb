class UsersController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
    if session[:id].nil?
      flash[:notice] = "You cannot make a review without being logged in."
    else
      review[:user_id] = session[:id]
      review.save
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :content, :movie_id)
  end
end
