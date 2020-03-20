class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def average_appearance_rating
    return 0 if self.appearances.count == 0
    total_ratings = self.appearances.reduce(0){ |sum, appearance| 
      sum + appearance.rating
    }
    total_ratings/self.appearances.count
  end
end
