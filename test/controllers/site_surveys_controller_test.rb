require 'test_helper'

class SiteSurveysControllerTest < ActionController::TestCase
  setup do
    @site_survey = site_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_survey" do
    assert_difference('SiteSurvey.count') do
      post :create, site_survey: { date: @site_survey.date, freeNumber: @site_survey.freeNumber, halfNumber: @site_survey.halfNumber, party_id: @site_survey.party_id, person_id: @site_survey.person_id, total: @site_survey.total }
    end

    assert_redirected_to site_survey_path(assigns(:site_survey))
  end

  test "should show site_survey" do
    get :show, id: @site_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_survey
    assert_response :success
  end

  test "should update site_survey" do
    patch :update, id: @site_survey, site_survey: { date: @site_survey.date, freeNumber: @site_survey.freeNumber, halfNumber: @site_survey.halfNumber, party_id: @site_survey.party_id, person_id: @site_survey.person_id, total: @site_survey.total }
    assert_redirected_to site_survey_path(assigns(:site_survey))
  end

  test "should destroy site_survey" do
    assert_difference('SiteSurvey.count', -1) do
      delete :destroy, id: @site_survey
    end

    assert_redirected_to site_surveys_path
  end
end
