class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :attractions
end
