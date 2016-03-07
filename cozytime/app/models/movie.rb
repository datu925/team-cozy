class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :ratings, as: :ratable
  has_many :comments, as: :commentable
  has_many :categorizations
  has_many :genres, through: :categorizations
end
