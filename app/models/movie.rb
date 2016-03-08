class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :ratings, as: :ratable
  has_many :comments, as: :commentable
  has_many :categorizations
  has_many :genres, through: :categorizations

  def average_rating
    if self.ratings.count == 0
      return "unrated"
    else
      self.ratings.sum(:value)/self.ratings.count
    end
  end

  def self.title_search(search)
    fz = FuzzyMatch.new(Movie.all, :read => :title)
    @results = fz.find(search)
  end

  def self.top_ten
    Movie.all.sort_by{ |film| film.average_rating }.last(10).reverse!
  end

end
