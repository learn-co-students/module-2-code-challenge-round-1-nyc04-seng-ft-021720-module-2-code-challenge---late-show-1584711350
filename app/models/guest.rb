class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def appearances_rating(episode)
        @appearances = Appearance.select {|a| a.guest == self}
        @episode = episode
        @appearance = @appearances.find {|a|a.episode_id == @episode.id}
        @appearance.rating
    end
end
