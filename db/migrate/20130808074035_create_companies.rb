class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :sn
      t.string :name
      t.string :telphone
      t.string :fax
      t.string :email
      t.string :type

      t.timestamps
    end
  end
end
