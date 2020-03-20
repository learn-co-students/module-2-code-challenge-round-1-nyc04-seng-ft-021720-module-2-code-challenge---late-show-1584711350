class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
  def show
    @guest = Guest.find(params[:id])
    @episodes = @guest.episodes.sort_by{
      |episode| episode.appearances.select{
        |appearance| appearance.guest == @guest
      }[0].rating
    }.reverse
  end
end
