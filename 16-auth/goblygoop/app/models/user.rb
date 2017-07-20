class User < ApplicationRecord
  has_many :beers
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 8} 
end
