class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, inclusion: {in: 1..5, message: "%{value} has to be between 1-5!" }

  validates :guest_id, uniqueness: {scope: :episode_id, message: "This guest has already been on this show!"}

end
