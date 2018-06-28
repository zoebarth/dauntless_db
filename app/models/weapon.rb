class Weapon < ApplicationRecord
  
  belongs_to :elemental_power, class_name: 'Element', optional: true
  belongs_to :perk, optional: true
	validates :name, :weapon_type, :base_power, presence: true
  validates :base_power, :perk_amount, :elemental_power_amount, numericality: { only_integer: true }, allow_nil: true
	enum weapon_type: [:axe, :chain_blade, :sword, :hammer, :war_pike]
	enum cell_slot_type_one: [:defense, :mobility, :power, :technique, :utility]
  enum cell_slot_type_two: [:defense, :mobility, :power, :technique, :utility], _prefix: true

end
