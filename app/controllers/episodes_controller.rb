class EpisodesController < ApplicationController
  before_action :find_by_episode_id, only: [:show]

  def index
    @episodes = Episode.all
  end

  def show
    
  end

  private

  def find_by_episode_id
    @episode = Episode.find(params[:id])
  end

end
