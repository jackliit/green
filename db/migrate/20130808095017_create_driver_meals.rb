class CreateDriverMeals < ActiveRecord::Migration
  def change
    create_table :driver_meals do |t|
      t.string :dealer
      t.string :carSn
      t.integer :mealAllowance
      t.string :driver_id
      t.integer :party_id

      t.timestamps
    end
  end
end
