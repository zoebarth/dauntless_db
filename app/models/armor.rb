class Armor < ApplicationRecord
  belongs_to :perk, optional: true
  belongs_to :elemental_weakness, class_name: 'Element', optional: true
  belongs_to :elemental_resistance, class_name: 'Element', optional: true
  validates :name, presence: true
  validates :base_armor, presence: true, numericality: { only_integer: true }
  validates :elemental_weakness_amount, :elemental_resistance_amount, :perk_amount, numericality: { only_integer: true, allow_nil: true }
  enum cell_slot_type: [:defense, :mobility, :power, :technique, :utility]
  enum armor_type: [:head, :torso, :arms, :legs]
end
