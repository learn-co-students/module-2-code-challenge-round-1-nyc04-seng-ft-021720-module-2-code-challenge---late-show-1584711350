class AppearancesController < ApplicationController
	def new
		@appearance = Appearance.new
		@guests = Guest.all
		@episodes = Episode.all
	end
	def create
		@appearance = Appearance.new(strong_params)
		if @appearance.save
			redirect_to episode_path(params[:appearance][:episode_id])
		else
			@guests = Guest.all
			@episodes = Episode.all
			render :new
		end
	end

	private

	def strong_params
		params.require(:appearance).permit(:guest_id, :episode_id, :rating)
	end
end
