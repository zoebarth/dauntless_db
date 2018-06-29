class AddColumnToLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :parent, foreign_key: true

      #t.references :parent, index: true
  end
end
