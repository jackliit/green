require 'test_helper'

class StaticNumbersControllerTest < ActionController::TestCase
  setup do
    @static_number = static_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:static_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create static_number" do
    assert_difference('StaticNumber.count') do
      post :create, static_number: { date: @static_number.date, number: @static_number.number, title: @static_number.title }
    end

    assert_redirected_to static_number_path(assigns(:static_number))
  end

  test "should show static_number" do
    get :show, id: @static_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @static_number
    assert_response :success
  end

  test "should update static_number" do
    patch :update, id: @static_number, static_number: { date: @static_number.date, number: @static_number.number, title: @static_number.title }
    assert_redirected_to static_number_path(assigns(:static_number))
  end

  test "should destroy static_number" do
    assert_difference('StaticNumber.count', -1) do
      delete :destroy, id: @static_number
    end

    assert_redirected_to static_numbers_path
  end
end
