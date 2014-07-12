class CreateTechniques < ActiveRecord::Migration
  def change
    create_table :techniques do |t|
      t.string :name
      t.text :description
      t.boolean :dry
      t.string :equipment

      t.timestamps
    end
  end
end
