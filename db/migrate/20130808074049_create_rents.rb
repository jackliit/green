class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.string :place
      t.time :rentStart
      t.time :rentEnd
      t.boolean :fullday
      t.integer :party_id

      t.timestamps
    end
  end
end
