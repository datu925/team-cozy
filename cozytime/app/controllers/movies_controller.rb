class MoviesController < ApplicationController
  def index
    @movies = Movie.top_ten
    @ratings = Ratings.most_recent
  end

  def show
    # @movie = Movie.find(params[:id])
    @movie = Movie.first
    render :show
  end
end
