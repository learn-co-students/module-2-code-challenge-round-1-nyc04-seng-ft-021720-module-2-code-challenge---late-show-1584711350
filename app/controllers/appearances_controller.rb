class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end
  
  def show
    @appearance = Appearance.find(params[:id])
  end

  def edit
    @appearance = Appearance.find(params[:id])
  end

  def update
    @appearance = Appearance.find(params[:id])
    @appearance.update(appearance_params)
    redirect_to @appearance
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(strong_params)
    @appearance.save
    redirect_to @appearance
  end

  private
  def appearance_params
    params.require(:appearance).permit(:name, :occupation)
  end
end
