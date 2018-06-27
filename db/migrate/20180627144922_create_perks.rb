class CreatePerks < ActiveRecord::Migration[5.2]
  def change
    create_table :perks do |t|
      t.string :name
      t.string :desc
      t.string :point_1
      t.string :point_2
      t.string :point_3
      t.string :point_4
      t.string :point_5
      t.string :point_6
      
      t.timestamps
    end
  end
end
