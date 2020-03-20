class ApperanceController < ApplicationController

    def index 
        @apperance = Apperance.all 
    end 

end 