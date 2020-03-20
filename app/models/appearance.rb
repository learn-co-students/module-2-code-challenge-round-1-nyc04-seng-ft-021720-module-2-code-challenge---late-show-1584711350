class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :guest_id, uniqueness: { scope: :episode_id, message: " has already appeared in that episode" }
  # validates :rating, numericality: { :only_integer => true }, :inclusion => {:in => 1..5, message: "must be between 1 and 5"}
  # validates :rating, inclusion: {in: 1...5, message: "must be between 1 and 5"}
  validates :rating, numericality: { greater_than: 0, less_than: 6, message: "must be between 1 and 5" }
end
