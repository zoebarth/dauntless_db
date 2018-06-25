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

		redirect_to elements_path
	end

	def update
		@element = Element.find(params[:id])
		respond_to do |f|
			f.html do 
				if @element.update(elements_params)
					redirect_to elements_path
				end
			end
		end
	end

	def create
		@element = Element.new(elements_params)
		@element.save
		redirect_to elements_path
	end

	private

	def elements_params
		params.require(:element).permit(:name)
	end

end
