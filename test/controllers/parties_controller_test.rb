require 'test_helper'

class PartiesControllerTest < ActionController::TestCase
  setup do
    @party = parties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create party" do
    assert_difference('Party.count') do
      post :create, party: { arrive: @party.arrive, arriveActial: @party.arriveActial, bigBus: @party.bigBus, biller: @party.biller, commission: @party.commission, commissionAgent: @party.commissionAgent, commissionAmount: @party.commissionAmount, connector: @party.connector, country: @party.country, date: @party.date, entranceEmp_id: @party.entranceEmp_id, fullTicket: @party.fullTicket, fullTicketDIY: @party.fullTicketDIY, fullTicketFree: @party.fullTicketFree, fullTicketG: @party.fullTicketG, fullTicketGFree: @party.fullTicketGFree, guide: @party.guide, halfTicket: @party.halfTicket, halfTicketDIY: @party.halfTicketDIY, halfTicketFree: @party.halfTicketFree, halfTicketG: @party.halfTicketG, halfTicketGFree: @party.halfTicketGFree, isGetCommission: @party.isGetCommission, isGetTicket: @party.isGetTicket, isHandReceipt: @party.isHandReceipt, isPaid: @party.isPaid, leave: @party.leave, leaveActial: @party.leaveActial, main_company_id: @party.main_company_id, meal: @party.meal, mealAllowanceTotal: @party.mealAllowanceTotal, memo: @party.memo, middleBus: @party.middleBus, modifyEmp_id: @party.modifyEmp_id, name: @party.name, payMan: @party.payMan, payTotal: @party.payTotal, payType: @party.payType, project: @party.project, recordEmp_id: @party.recordEmp_id, reserveDate: @party.reserveDate, secondary_company_id: @party.secondary_company_id, selfDrive: @party.selfDrive, specialSale: @party.specialSale, totalPeople: @party.totalPeople, totalTicketPeople: @party.totalTicketPeople }
    end

    assert_redirected_to party_path(assigns(:party))
  end

  test "should show party" do
    get :show, id: @party
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @party
    assert_response :success
  end

  test "should update party" do
    patch :update, id: @party, party: { arrive: @party.arrive, arriveActial: @party.arriveActial, bigBus: @party.bigBus, biller: @party.biller, commission: @party.commission, commissionAgent: @party.commissionAgent, commissionAmount: @party.commissionAmount, connector: @party.connector, country: @party.country, date: @party.date, entranceEmp_id: @party.entranceEmp_id, fullTicket: @party.fullTicket, fullTicketDIY: @party.fullTicketDIY, fullTicketFree: @party.fullTicketFree, fullTicketG: @party.fullTicketG, fullTicketGFree: @party.fullTicketGFree, guide: @party.guide, halfTicket: @party.halfTicket, halfTicketDIY: @party.halfTicketDIY, halfTicketFree: @party.halfTicketFree, halfTicketG: @party.halfTicketG, halfTicketGFree: @party.halfTicketGFree, isGetCommission: @party.isGetCommission, isGetTicket: @party.isGetTicket, isHandReceipt: @party.isHandReceipt, isPaid: @party.isPaid, leave: @party.leave, leaveActial: @party.leaveActial, main_company_id: @party.main_company_id, meal: @party.meal, mealAllowanceTotal: @party.mealAllowanceTotal, memo: @party.memo, middleBus: @party.middleBus, modifyEmp_id: @party.modifyEmp_id, name: @party.name, payMan: @party.payMan, payTotal: @party.payTotal, payType: @party.payType, project: @party.project, recordEmp_id: @party.recordEmp_id, reserveDate: @party.reserveDate, secondary_company_id: @party.secondary_company_id, selfDrive: @party.selfDrive, specialSale: @party.specialSale, totalPeople: @party.totalPeople, totalTicketPeople: @party.totalTicketPeople }
    assert_redirected_to party_path(assigns(:party))
  end

  test "should destroy party" do
    assert_difference('Party.count', -1) do
      delete :destroy, id: @party
    end

    assert_redirected_to parties_path
  end
end
