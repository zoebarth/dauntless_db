class WeaponsController < ApplicationController
    
    def index
      @weapons = Weapon.order(:name)
    end

    private 
    def set_weapon
      @weapon = Weapon.find(params[:id])
    end

    def weapon_params
      params.fetch(:weapon, {}).permit(:name,
                                         :weapon_type,
                                         :base_power,
                                         :max_power,
                                         :elemental_power_id,
                                         :elemental_power_amount,
                                         :perk_amount,
                                         :perk_id,
                                         :cell_slot_type_one,
                                         :cell_slot_type_two,
                                         :unique_effect)
    end
end