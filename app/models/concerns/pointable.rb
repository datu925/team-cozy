module Pointable
  extend ActiveSupport::Concern

  def average_rating
    if self.ratings.count == 0
      return "unrated"
    else
      10 * self.ratings.sum(:value).to_f/self.ratings.count.to_f
    end
  end
end