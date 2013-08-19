class CreateStaticNumbers < ActiveRecord::Migration
  def change
    create_table :static_numbers do |t|
      t.date :date
      t.string :title
      t.integer :number

      t.timestamps
    end
  end
end
