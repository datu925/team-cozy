class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :ratable, polymorphic: true

  def most_recent
    Rating.order(created_at: :asc).limit(10)
  end
end
