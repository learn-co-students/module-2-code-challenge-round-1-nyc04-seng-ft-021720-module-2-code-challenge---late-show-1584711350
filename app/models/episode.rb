class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def current_appearance_rating
    current_appearance = Appearance.find_by(episode_id: self.id)
    current_appearance.rating
    end

    def avg_appearance_rating
        total = 0
        sum = 0
        self.appearances.each do |appearance|
            total = sum + appearance.rating
        end
        if total != 0
            return (total/(self.appearances.length)).to_f
        else
            return "There are no ratings yet"
        end
    end

    
end
