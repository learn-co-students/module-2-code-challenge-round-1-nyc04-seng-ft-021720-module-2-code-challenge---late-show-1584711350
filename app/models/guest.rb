class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def rating_sort
    high_to_low =self.episodes.sort_by{|episode| -(episode.current_appearance_rating)}
    high_to_low
    end
end
