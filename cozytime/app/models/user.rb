class User < ActiveRecord::Base
  has_many :reviews
  has_many :ratings
  has_many :comments

  has_secure_password

  def name
    self.first_name + " " + self.last_name
  end
end
