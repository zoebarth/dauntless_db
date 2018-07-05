class AddColumnsToArmors < ActiveRecord::Migration[5.2]
  def change
    add_column :armors, :armor_type, :integer
  end
end
