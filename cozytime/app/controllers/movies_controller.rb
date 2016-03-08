class MoviesController < ApplicationController
  def index
  end

  def show
    # @movie = Movie.find(params[:id])
    @movie = Movie.first
    render :show
  end
end
