class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])
    @episode.update(episode_params)
    redirect_to @episode
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(strong_params)
    @episode.save
    redirect_to @episode
  end

  def average
    ratings += self.appearances[:rating]
    average = ratings.to_f/self.appearances.count
  end

  private
  def episode_params
    params.require(:episode).permit(:name, :occupation)
  end

  
end
