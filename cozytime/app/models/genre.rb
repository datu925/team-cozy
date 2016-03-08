class Genre < ActiveRecord::Base
  has_many :categorizations
  has_many :movies, through: :categorizations

  def self.most_popular
    Genre.all.sort_by{|genre| genre.movies.count}.last(10).reverse!
  end
end
