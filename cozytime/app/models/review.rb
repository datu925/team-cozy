class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
  has_many :ratings, as: :ratable
  has_many :comments, as: :commentable
end
