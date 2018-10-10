class Location < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips

  validates :name, presence: true
  validates :name, uniqueness: true
end
