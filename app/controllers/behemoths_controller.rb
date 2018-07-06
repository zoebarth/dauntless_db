class BehemothsController < ApplicationController
    
    def index
      @behemoths = Behemoth.order(:name).includes(:weakness_types, :damage_types).with_attached_logo
    end

    def show 
      set_behemoth
      suggest_weapons
      suggest_armor
    end
    
    private
    def suggest_weapons
      @suggested_weapons = Weapon.where(elemental_power: @behemoth.weakness_types)
    end

    def suggest_armor
      @suggested_armor = Armor.where(elemental_resistance: @behemoth.damage_types)
    end

    def set_behemoth
      @behemoth = Behemoth.find(params[:id])
    end

    def behemoth_params
      params.fetch(:behemoth, {}).permit(:name, :logo, damage_type_ids:[], weakness_type_ids:[])
    end
end