module Admin
  class BehemothsController < ApplicationController

    def index
      @behemoths = Behemoth.all.order(:name)
    end

    def new
    @behemoth = Behemoth.new
    end

    def create
      @behemoth= Behemoth.new(behemoth_params)
      respond_to do |format|
      if @behemoth.save
        format.html { redirect_to admin_behemoth_path(@behemoth), notice: "Behemoth was successfully created."}
      else
        format.html {render :new}
      end
      end
    end

    def show 
    set_behemoth
    end

    def update
    set_behemoth
      respond_to do |format|
      if @behemoth.update(behemoth_params)
        format.html { redirect_to admin_behemoth_path(@behemoth), notice: "Behemoth was successfully updated."}
      else
        format.html {render :edit}
      end
      end
    end

    def edit
    set_behemoth
    end

    private 
    def set_behemoth
    @behemoth = Behemoth.find(params[:id])
    end

    def behemoth_params
      params.fetch(:behemoth, {}).permit(:name)
    end

  end
end
