class Perk < ApplicationRecord
  validates :name, :desc, :point_1, :point_2, :point_3, :point_4, :point_5, :point_6, presence: true

end
