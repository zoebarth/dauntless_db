class CreateElementalWeaknesses < ActiveRecord::Migration[5.2]
  def change
    create_table :elemental_weaknesses do |t|
      t.belongs_to :behemoth
      t.belongs_to :element
    end
  end
end
