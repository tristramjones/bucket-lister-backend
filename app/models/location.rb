class Location < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :location_json, presence: true
  # validates :location_json, uniqueness: true
end
