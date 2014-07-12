class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :meatcut_id
      t.integer :technique_id
     

      t.timestamps
    end
  end
end
