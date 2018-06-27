class Reagent < ApplicationRecord
  belongs_to :behemoth
  validates :name, presence: true
  enum rarity: [:common, :uncommon, :rare, :epic, :legendary]
end
