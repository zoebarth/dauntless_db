module Admin
  class PerksController < AdminController
    def index
      @perks = Perk.all
    end

    def show
      set
    end

    def new
      @perk = Perk.new
    end

    def edit
      set
    end

    def destroy
      set
      @perk.destroy
      redirect_to admin_perks_path
    end

    def update
      set
      if @perk.update(perks_params)
        redirect_to admin_perks_path
      end
    end

    def create
      @perk = Perk.new(perks_params)
      @perk.save
      redirect_to admin_perks_path
    end

    private

    def set
      @perk = Perk.find(params[:id])
    end

    def perks_params
      params.require(:perk).permit(:name, :desc, :point_1, :point_2, :point_3, :point_4, :point_5, :point_6)
    end
  end
end
