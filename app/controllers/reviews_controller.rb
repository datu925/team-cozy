class ReviewsController < ApplicationController
  def new
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
      respond_to do |format|
        format.json { render json: review}
      end
    end
  end

  private
  def review_params
    params.require(:review).permit(:title, :content)
  end
end
