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
      user1 = User.create(first_name: "j",last_name: "q", username: "jq", password: "password")
      user2 = User.create(first_name: "k",last_name: "q", username: "kq", password: "password")
        movie.ratings.create(user: user1, value: 2)
        movie.ratings.create(user: user2, value: 6)
      expect(movie.average_rating).to eq(4)
   end
  end

  describe '#self.top_ten' do
    it 'returns the top ten movies by rating' do

      expect(Movie.top_ten.first.average_rating).to be >= Movie.top_ten.last.average_rating

      expect(Movie.top_ten.length).to eq(10)
    end
  end
end