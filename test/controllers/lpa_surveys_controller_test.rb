require 'test_helper'

class LpaSurveysControllerTest < ActionController::TestCase
  setup do
    @lpa_survey = lpa_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lpa_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lpa_survey" do
    assert_difference('LpaSurvey.count') do
      post :create, lpa_survey: { active_status: @lpa_survey.active_status, sort: @lpa_survey.sort, title: @lpa_survey.title, user_id: @lpa_survey.user_id }
    end

    assert_redirected_to lpa_survey_path(assigns(:lpa_survey))
  end

  test "should show lpa_survey" do
    get :show, id: @lpa_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lpa_survey
    assert_response :success
  end

  test "should update lpa_survey" do
    patch :update, id: @lpa_survey, lpa_survey: { active_status: @lpa_survey.active_status, sort: @lpa_survey.sort, title: @lpa_survey.title, user_id: @lpa_survey.user_id }
    assert_redirected_to lpa_survey_path(assigns(:lpa_survey))
  end

  test "should destroy lpa_survey" do
    assert_difference('LpaSurvey.count', -1) do
      delete :destroy, id: @lpa_survey
    end

    assert_redirected_to lpa_surveys_path
  end
end
