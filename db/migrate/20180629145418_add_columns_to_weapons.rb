class AddColumnsToWeapons < ActiveRecord::Migration[5.2]
  def change
    add_column :weapons, :max_power, :integer
  end
end
