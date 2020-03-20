class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  # range of valid ratings:
  validates_inclusion_of :rating, { in: 1..5,
    message: 'can only be between 1 and 5'
  }
  
  # guest can only appear on a given episode once (prevents duplicates):
  validates :guest, uniqueness: { scope: :episode,
    message: 'has already appeared on this episode. Appearance ratings cannot be changed.'
  }
end
