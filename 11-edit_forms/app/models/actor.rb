class Actor < ActiveRecord::Base
  has_many :characters
  has_many :tv_shows, through: :characters
end