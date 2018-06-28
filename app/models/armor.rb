class Armor < ApplicationRecord
  validates :name, presence: true
  validates :base_armor, presence: true, numericality: { only_integer: true }
  validates :elemental_weakness_amount, :elemental_resistance_amount, :perk_amount, numericality: { only_integer: true, allow_nil: true }
  enum cell_slot_type: [:defense, :mobility, :power, :technique, :utility]
  belongs_to :perk
  belongs_to :elemental_weakness, class_name: 'Element'
  belongs_to :elemental_resistance, class_name: 'Element'
end
