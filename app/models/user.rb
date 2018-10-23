class User < ApplicationRecord
  has_many :trips
  has_many :locations, through: :trips
  
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  # validates :name, presence: true, uniqueness: true
end
