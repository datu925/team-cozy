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
      movie1 = Movie.create!(title: "Test title", release_year: 2016, synopsis: "This is a synopsis")
      movie1.ratings.create!(value: 1)

      movie2 = Movie.create!(title: "Test title", release_year: 2016, synopsis: "This is a synopsis")
      movie2.ratings.create!(value: 2)

      movie3 = Movie.create!(title: "Test title", release_year: 2016, synopsis: "This is a synopsis")
      movie3.ratings.create!(value: 3)
      expect(Movie.top_ten).to eq([movie3, movie2, movie1])
    end
  end
end