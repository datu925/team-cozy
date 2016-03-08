class Genre < ActiveRecord::Base
  has_many :categorizations
  has_many :movies, through: :categorizations

  def self.most_popular
    Genre.all.sort_by{|genre| genre.movies.count}.last(10).reverse!
  end

  def title_case
    self.name.split(/(\W)/).map(&:capitalize).join
  end

  def highest_rated_films
    self.movies.top_ten
  end
end
