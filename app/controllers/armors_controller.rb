class ArmorsController < ApplicationController
    
    def index
      @armors = Armor.order(:name)
    end

    private 
    def set_armor
      @armor = Armor.find(params[:id])
    end

    def armor_params
      params.fetch(:armor, {}).permit(:name, :cell_slot_type, :base_armor, :elemental_resistance_amount, :elemental_weakness_amount, :perk_amount,
        :elemental_weakness_id, :elemental_resistance_id, :perk_id)
    end
end