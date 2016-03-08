class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :ratable, polymorphic: true

  validates :user_id, uniqueness: { scope: [:ratable_id, :ratable_type]}

  validates :value, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }


end
