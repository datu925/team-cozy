class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :ratings, as: :ratable
  has_many :comments, as: :commentable
  has_many :categorizations
  has_many :genres, through: :categorizations

  include Pointable

  def self.title_search(search)
    fz = FuzzyMatch.new(Movie.all, :read => :title)
    @results = fz.find_all(search)
  end

  def self.top_ten
    Movie.all.sort_by{ |film| film.average_rating }.last(10).reverse!
  end

  def trusted_reviews
    reviews.joins(:user).where('users.is_trusted = true')
  end

  def untrusted_reviews
    reviews.joins(:user).where('users.is_trusted = false')
  end

end
