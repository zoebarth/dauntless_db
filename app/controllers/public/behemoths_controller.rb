module Public
  class BehemothsController < ApplicationController
    
    def index
      @behemoths = Behemoth.all.order(:name)
    end

    private 
    def set_behemoth
      @behemoth = Behemoth.find(params[:id])
    end

    def behemoth_params
      params.fetch(:behemoth, {}).permit(:name, damage_type_ids:[], weakness_type_ids:[])
    end

  end
end