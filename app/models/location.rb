class Location < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips

  validates :name, presence: true, uniqueness: true
  validates :location_json, presence: true
end
