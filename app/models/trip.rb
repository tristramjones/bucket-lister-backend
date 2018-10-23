class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :attractions

  validates :user_id, :location_id, presence: true
end
