class Behemoth < ApplicationRecord
  belongs_to :location

  has_many :elemental_damages
  has_many :damage_types, through: :elemental_damages, class_name: 'Element', source: :element
  has_many :elemental_weaknesses
  has_many :weakness_types, through: :elemental_weaknesses, class_name: 'Element', source: :element
  validates :name, presence: true
end