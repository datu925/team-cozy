require 'rails_helper'

describe 'movie' do
  let(:movie) { Movie.create!(title: "Test title", release_year: 2016, synopsis: "This is a synopsis") }



  describe 'initialization' do
    it 'creates a new instance of movie' do
      expect(movie).to be_instance_of(Movie)
    end
  end

  describe '#average rating' do
    it 'returns an average rating of a movie' do
      2.times.map do
        movie.ratings.create!(value: 2)
      end
      expect(movie.average_rating).to eq(2)
   end
  end

  describe '#self.top_ten' do
    it 'returns the top ten movies by rating' do

      expect(Movie.top_ten.first.average_rating).to be >= Movie.top_ten.last.average_rating

      expect(Movie.top_ten.length).to eq(10)
    end
  end
end