class Attraction < ApplicationRecord
  belongs_to :trip
  
  validates :title, presence: true
  validates :trip_id, presence: true
  validates :position, presence: true
end
