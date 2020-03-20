class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end
  def show
    @episode = Episode.find(params[:id])
    @guests = @episode.guests
    @average_rating = @episode.average_rating
  end
end
