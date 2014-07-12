class CreateMeatcuts < ActiveRecord::Migration
  def change
    create_table :meatcuts do |t|
      t.string :name
      t.string :animal
      t.string :meat_name
      t.string :primal
      t.text :description
      t.string :alt_names

      t.timestamps
    end
  end
end
