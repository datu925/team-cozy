require 'rails_helper'
require 'spec_helper'

describe "homepage" do
  it "has correct url" do
    visit '/'
    expect(current_path).to eq('/')
  end
end

describe "movie show page" do
  it "directs you to the individual movie page" do

    movies = Movie.top_ten
    movie = movies[0]
    puts "************"
    # puts genre.highest_rated
    # puts movies.first
    puts movie.title
     Genre.all.each_with_index do |genre, index|
      puts index
      puts genre.highest_rated.title
     end
    # puts movie
    # visit "/"
    # first(".top-movie > a").click
    # expect(page).to have_current_path("/movies/#{movie.id}")
  end
end
