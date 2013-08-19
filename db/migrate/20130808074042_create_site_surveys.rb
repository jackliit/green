class CreateSiteSurveys < ActiveRecord::Migration
  def change
    create_table :site_surveys do |t|
      t.date :date
      t.integer :total
      t.integer :freeNumber
      t.integer :halfNumber
      t.integer :person_id
      t.integer :party_id

      t.timestamps
    end
  end
end
