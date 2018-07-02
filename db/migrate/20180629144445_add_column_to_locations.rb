class AddColumnToLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :parent, foreign_key: true

  end
end
