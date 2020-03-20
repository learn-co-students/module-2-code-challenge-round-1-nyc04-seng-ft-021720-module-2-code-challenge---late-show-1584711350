class GuestsController < ApplicationController
  before_action :find_guest_by_id, only: [:show]

  def index
    @guests = Guest.all
  end

  private

  def find_guest_by_id
    @guest = Guest.find(params[:id])
  end

  def guest_params

  end

end
