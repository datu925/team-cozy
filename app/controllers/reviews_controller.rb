class ReviewsController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
  end

  def create
    movie = Movie.find(params[:movie_id])
    review = movie.reviews.new(review_params)
    if session[:user_id].nil?
      flash[:notice] = "You cannot make a review without being logged in."
    else
      review[:user_id] = session[:user_id]
      review.save
      render json: review
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :content)
  end
end
