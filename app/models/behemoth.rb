class Behemoth < ApplicationRecord
  has_and_belongs_to_many :locations 
  has_many :reagents
  has_many :elemental_damages
  has_many :damage_types, through: :elemental_damages, class_name: 'Element', source: :element
  has_many :elemental_weaknesses
  has_many :weakness_types, through: :elemental_weaknesses, class_name: 'Element', source: :element
  has_one_attached :logo
  validates :name, presence: true
end