class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :rating
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
