class BehemothsController < ApplicationController
    
    def index
      @behemoths = Behemoth.order(:name)
    end

    private 
    def set_behemoth
      @behemoth = Behemoth.find(params[:id])
    end

    def behemoth_params
      params.fetch(:behemoth, {}).permit(:name, :logo, damage_type_ids:[], weakness_type_ids:[])
    end
end