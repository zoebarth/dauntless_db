class Reagent < ApplicationRecord
  belongs_to :behemoth
  validates :name, presence: true
end
