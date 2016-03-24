class Car < ActiveRecord::Base
  validates :make, :year, :model, :price, presence: true
end
