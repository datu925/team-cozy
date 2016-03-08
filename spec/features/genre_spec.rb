require 'rails_helper'

describe "genres" do

  describe "top films" do

    it "should display it's title" do
      genre = Genre.most_popular.sample
      visit "/genres/" + genre.id.to_s
      expect(page).to have_text(genre.title_case)
    end

    it "should display a movie from it's list" do
      genre = Genre.most_popular.sample
      movie = genre.highest_rated_films.sample
      visit "/genres/" + genre.id.to_s
      expect(page).to have_text("#{movie.title}")
    end

    it "should redirect to the show page for any of the top ten" do
      genre = Genre.most_popular.sample
      movie = genre.highest_rated_films.sample
      visit "/genres/" + genre.id.to_s
      click_link("#{movie.title}")
      expect(current_path).to eq(movie_path(movie))
    end
  end
end
