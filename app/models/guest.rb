class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def appearances_rating(episode)
        @appearances = Appearance.all.select {|a| a.guest == self}
        @episode = episode
        @appearance = @appearances.find {|a|a.episode_id == @episode.id}
        @appearance.rating
    end

    # def order_appearances
    #     @episodes = Episode.all.select {|ep| ep.guests == self}
    #     @ep_rating = @episodes.each {|ep| self.appearances_rating(ep)} 
    #     # @ep_rating.sort_by {|x| x.rating}
    # end
end
