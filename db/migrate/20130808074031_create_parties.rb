class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.date :date
      t.string :name
      t.integer :main_company_id
      t.integer :secondary_company_id
      t.integer :connector
      t.integer :biller
      t.time :arrive
      t.time :leave
      t.time :arriveActial
      t.time :leaveActial
      t.integer :fullTicket
      t.integer :halfTicket
      t.integer :fullTicketG
      t.integer :halfTicketG
      t.integer :fullTicketFree
      t.integer :halfTicketFree
      t.integer :fullTicketGFree
      t.integer :halfTicketGFree
      t.integer :fullTicketDIY
      t.integer :halfTicketDIY
      t.integer :totalTicketPeople
      t.integer :totalPeople
      t.integer :bigBus
      t.integer :middleBus
      t.integer :selfDrive
      t.integer :payTotal
      t.string :payType
      t.string :payMan
      t.string :specialSale
      t.string :project
      t.string :commission
      t.string :commissionAgent
      t.integer :commissionAmount
      t.boolean :isHandReceipt
      t.boolean :isGetTicket
      t.boolean :isPaid
      t.boolean :isGetCommission
      t.integer :mealAllowanceTotal
      t.string :meal
      t.date :reserveDate
      t.text :memo
      t.integer :entranceEmp_id
      t.integer :recordEmp_id
      t.integer :modifyEmp_id
      t.string :guide
      t.string :country

      t.timestamps
    end
  end
end
