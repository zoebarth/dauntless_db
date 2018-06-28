class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
    	t.string :name 
    	t.integer :weapon_type
    	t.integer :base_power
    	t.belongs_to :elemental_power
    	t.integer :elemental_power_amount
    	t.integer :perk_amount
    	t.belongs_to :perk
    	t.integer :cell_slot_type_one
    	t.integer :cell_slot_type_two
    	t.string :unique_effect
    	t.timestamps
    end
  end
end
