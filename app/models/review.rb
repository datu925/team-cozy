class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
  has_many :ratings, as: :ratable
  has_many :comments, as: :commentable

  def self.most_recent
    Review.order(created_at: :asc).limit(10)
  end

  def average_rating
    if self.ratings.count == 0
      return "unrated"
    else
      self.ratings.sum(:value)/self.ratings.count
    end
  end

end
