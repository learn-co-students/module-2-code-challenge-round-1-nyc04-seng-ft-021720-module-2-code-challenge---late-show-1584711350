class Appearance < ApplicationRecord
belongs_to :guest
belongs_to :episode
#validates :rating, numericality: (equal_to: {1..5})
end