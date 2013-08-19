require 'test_helper'

class DriverMealsControllerTest < ActionController::TestCase
  setup do
    @driver_meal = driver_meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:driver_meals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create driver_meal" do
    assert_difference('DriverMeal.count') do
      post :create, driver_meal: { carSn: @driver_meal.carSn, dealer: @driver_meal.dealer, driver_id: @driver_meal.driver_id, mealAllowance: @driver_meal.mealAllowance, party_id: @driver_meal.party_id }
    end

    assert_redirected_to driver_meal_path(assigns(:driver_meal))
  end

  test "should show driver_meal" do
    get :show, id: @driver_meal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @driver_meal
    assert_response :success
  end

  test "should update driver_meal" do
    patch :update, id: @driver_meal, driver_meal: { carSn: @driver_meal.carSn, dealer: @driver_meal.dealer, driver_id: @driver_meal.driver_id, mealAllowance: @driver_meal.mealAllowance, party_id: @driver_meal.party_id }
    assert_redirected_to driver_meal_path(assigns(:driver_meal))
  end

  test "should destroy driver_meal" do
    assert_difference('DriverMeal.count', -1) do
      delete :destroy, id: @driver_meal
    end

    assert_redirected_to driver_meals_path
  end
end
