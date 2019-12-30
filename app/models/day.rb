class Day < ApplicationRecord
  has_many :tasks
  validates :day, uniqueness: true
end
