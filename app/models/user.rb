class User < ActiveRecord::Base
  has_many :reviews
  has_many :ratings
  has_many :comments

  has_secure_password

  validates :first_name, :last_name, :username, :password, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 4 }, allow_nil: true

  def name
    self.first_name + " " + self.last_name
  end
end
