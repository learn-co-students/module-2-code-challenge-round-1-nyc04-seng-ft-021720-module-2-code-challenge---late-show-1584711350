class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        @appearances = Appearance.select {|a| a.episode == self}
        total_ratings = @appearances.sum(&:rating) 
        total_ratings.to_f / @appearances.count 
    end
end
