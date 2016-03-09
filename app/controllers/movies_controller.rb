class MoviesController < ApplicationController
  def index
    @movies = Movie.top_ten
    @reviews = Review.most_recent
    @genres = Genre.most_popular
    render :index
  end

  def show
    @movie = Movie.find(params[:id])
    @comment = Comment.new
    @review = Review.new
    render :show
  end

  def search
    @movies = Movie.title_search(params[:q])
    render :search
  end

end
