class CreateFoodLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :food_logs do |t|
      t.string :meal_type
      t.integer :calories
      t.integer :proteins
      t.integer :carbohydrates
      t.integer :fats

      t.timestamps
    end
  end
end
