class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    # @average_appearance_rating = average_appearance_rating(@episode)
  end

  private
    def episode_params
      params.require(:episode).permit(:date, :number)
    end
end
