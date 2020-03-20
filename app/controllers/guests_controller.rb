class GuestsController < ApplicationController
  before_action :find_guest_by_id, only: [:show]

  def index
    @guests = Guest.all.sort_by {|guest| guest.episodes.count * -1}
  end

  private

  def find_guest_by_id
    @guest = Guest.find(params[:id])
  end

  def guest_params

  end

end
