class CreateJoinTableLocationBehemoth < ActiveRecord::Migration[5.2]
  def change
    create_join_table :locations, :behemoths do |t|
       t.index [:location_id, :behemoth_id]
      # t.index [:behemoth_id, :location_id]
    end
  end
end
