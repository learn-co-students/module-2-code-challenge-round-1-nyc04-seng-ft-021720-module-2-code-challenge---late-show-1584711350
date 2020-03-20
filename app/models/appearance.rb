class Appearance < ApplicationRecord
  attr_accessor :rating

  belongs_to :episode
  belongs_to :guest
  validates :guest_id, uniqueness: {message: " has already appeared in that episode"}
  validates :rating, inclusion: {in: 1...5, message: "must be between 1 and 5"}
end
