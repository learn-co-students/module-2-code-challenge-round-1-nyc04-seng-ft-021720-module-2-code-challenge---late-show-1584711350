class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @guest.episodes.sort{|episode| episode.rating}
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    @guest.update(guest_params)
    redirect_to @guest
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(strong_params)
    @guest.save
    redirect_to @guest
  end

  private
  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end

end
