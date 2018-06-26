class Behemoth < ApplicationRecord
  has_many :behemoth_elemental_damages, class_name: 'ElementalDamage'
  has_many :elemental_damages, through: :behemoth_elemental_damages, class_name: 'Element', source: :element
  has_many :behemoth_elemental_weaknesses, class_name: 'ElementalWeakness'
  has_many :elemental_weaknesses, through: :behemoth_elemental_weaknesses, class_name: 'Element', source: :element
  validates :name, presence: true
end