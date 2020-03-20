class AppearancesController < ApplicationController
  before_action :find_appearance_by_id, only: [:show, :edit, :update]

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to @appearance.episode
    else
      render :new
    end
  end

  def update
  end

  private

  def find_appearance_by_id
    @appearance = Appearance.find(params[:id])
  end

  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end

end
