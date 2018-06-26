class AddLocationIdToBehemoths < ActiveRecord::Migration[5.2]
  def change
    add_reference :behemoths, :location
  end
end
