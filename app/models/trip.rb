class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :attractions

  validates :location_id, uniqueness: true
end
