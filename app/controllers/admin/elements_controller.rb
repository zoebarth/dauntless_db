module Admin
  class ElementsController < ApplicationController
    
    def index
      @elements = Element.all
    end

    def show
     @element = Element.find(params[:id])
    end

    def new
    end

    def edit
      @element = Element.find(params[:id])
    end

    def destroy
      @element = Element.find(params[:id])
      @element.destroy

      redirect_to admin_elements_path
    end

    def update
      @element = Element.find(params[:id])
      if @element.update(admin_elements_params)
      redirect_to admin_elements_path
      end
    end

    def create
      @element = Element.new(admin_elements_params)
      @element.save
      redirect_to admin_elements_path
    end

    private

    def admin_elements_params
      params.require(:element).permit(:name)
    end

  end

end