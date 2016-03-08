class MoviesController < ApplicationController
  def index
    @movies = Movie.top_ten
    @ratings = Ratings.most_recent
  end
end
