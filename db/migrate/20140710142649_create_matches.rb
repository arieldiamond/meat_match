class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :meatcut_id
      t.integer :technique_id
      t.string :good_idea
      t.string :notes


      t.timestamps
    end
  end
end
