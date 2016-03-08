require 'rails_helper'

describe "homepage" do
  describe "navbar" do

    it "display layout header" do
      visit '/'
      expect(page).to have_text("CozyTime Reviews")
    end
  end
  describe "top_ten" do

    it "should display the first sorted movie" do
      movie = Movie.top_ten.first
      visit '/'
      expect(page).to have_text("#{movie.title}")
    end

    it "should redirect to the show page for any of the top ten" do
      movie = Movie.top_ten.sample
      visit '/'
      click_link("#{movie.title}", :match => :first)
      expect(current_path).to eq(movie_path(movie))
    end
  end
  describe "recent reviews" do

    it "should display the most recent comment content" do
      review = Review.most_recent.first
      visit '/'
      expect(page).to have_text("#{review.content}")
    end

    it "should display the most recent comment username" do
      review = Review.most_recent.sample
      visit '/'
      expect(page).to have_text("#{review.user.username}")
    end

    it "should link to the movie the review is for" do
      review = Review.most_recent.sample
      visit '/'
      expect(page).to have_text("#{review.user.username}")
    end
  end
end
