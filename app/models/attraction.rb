class Attraction < ApplicationRecord
  belongs_to :trip

  validates :title, :trip_id, :category, :position, presence: true
end
