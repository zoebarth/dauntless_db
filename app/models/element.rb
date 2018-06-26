class Element < ApplicationRecord
  has_many :behemoths, through: :elemental_damages
  has_many :behemoths, through: :elemental_weaknesses
end
