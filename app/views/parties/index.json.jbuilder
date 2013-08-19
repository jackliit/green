json.array!(@parties) do |party|
  json.extract! party, :date, :name, :main_company_id, :secondary_company_id, :connector, :biller, :arrive, :leave, :arriveActial, :leaveActial, :fullTicket, :halfTicket, :fullTicketG, :halfTicketG, :fullTicketFree, :halfTicketFree, :fullTicketGFree, :halfTicketGFree, :fullTicketDIY, :halfTicketDIY, :totalTicketPeople, :totalPeople, :bigBus, :middleBus, :selfDrive, :payTotal, :payType, :payMan, :specialSale, :project, :commission, :commissionAgent, :commissionAmount, :isHandReceipt, :isGetTicket, :isPaid, :isGetCommission, :mealAllowanceTotal, :meal, :reserveDate, :memo, :entranceEmp_id, :recordEmp_id, :modifyEmp_id, :guide, :country
  json.url party_url(party, format: :json)
end
