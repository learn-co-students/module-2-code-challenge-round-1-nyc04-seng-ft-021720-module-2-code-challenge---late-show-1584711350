class AppearancesController < ApplicationController


    def new 
        @appearance = Appearance.new
    end 

    def create
        @appearance = Appearance.new(strong_params)
        if @appearance.save
            redirect_to @appearance.episode
        else
            render :new
        end
    end

    def show 
        @appearance = Appearance.find(params[:id])

    end 





    private 

    def strong_params
        params.require(:appearance).permit(:guest_id,:episode_id,:rating)
    end

end
