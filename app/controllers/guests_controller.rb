class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @episodes = @guest.episodes
    @episode_data = []
    if @episodes
      @episode_data = @episodes.map do |episode|
        {
          date: episode[:date],
          path: episode_path(episode),
          rating: get_appearance_rating(episode, @guest)
        }
      end
    end
    @episode_data = @episode_data.sort_by { |episode|
      episode[:rating]
    }.reverse
  end

  private
    def guest_params 
      params.require(:guest).permit(:name, :occupation)
    end

    def get_appearance_rating(episode, guest)
      Appearance.where(episode: episode, guest: guest).first[:rating]
    end

end
