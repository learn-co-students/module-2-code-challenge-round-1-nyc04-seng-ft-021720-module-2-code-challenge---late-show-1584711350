class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @appearances = @guest.appearances.sort_by(&:rating).reverse

  end 

  def new 
    @guest = Guest.new
  end 

  def create
    @guest = Guest.create(strong_params)
    redirect_to @guest
  end 

  def sort 
    @guest = Guest.find(params[:id])
    @appearances = @guest.appearances.sort_by(&:rating)
    render :show
  end 



  private

  def strong_params
    params.require(:guest).permit(:name, :occupation, :picture_url)
  end
end
