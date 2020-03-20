class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :guest_id, uniqueness: {message: "Guest has already appeared in that episode"}
end
