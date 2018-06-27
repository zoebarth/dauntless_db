class CreateReagents < ActiveRecord::Migration[5.2]
  def change
    create_table :reagents do |t|
      t.string :name
      t.string :rarity
      t.belongs_to :behemoth
      t.timestamps
    end
  end
end
