class GenresController < ApplicationController

  def show
    @genre = Genre.find(params[:id])
    @movies = @genre.highest_rated_films
    render :show
  end
end
