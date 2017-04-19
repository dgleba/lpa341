require 'test_helper'

class LpaQuestionsControllerTest < ActionController::TestCase
  setup do
    @lpa_question = lpa_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lpa_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lpa_question" do
    assert_difference('LpaQuestion.count') do
      post :create, lpa_question: { active_status: @lpa_question.active_status, question_type: @lpa_question.question_type, sort: @lpa_question.sort, survey_id: @lpa_question.survey_id, title: @lpa_question.title }
    end

    assert_redirected_to lpa_question_path(assigns(:lpa_question))
  end

  test "should show lpa_question" do
    get :show, id: @lpa_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lpa_question
    assert_response :success
  end

  test "should update lpa_question" do
    patch :update, id: @lpa_question, lpa_question: { active_status: @lpa_question.active_status, question_type: @lpa_question.question_type, sort: @lpa_question.sort, survey_id: @lpa_question.survey_id, title: @lpa_question.title }
    assert_redirected_to lpa_question_path(assigns(:lpa_question))
  end

  test "should destroy lpa_question" do
    assert_difference('LpaQuestion.count', -1) do
      delete :destroy, id: @lpa_question
    end

    assert_redirected_to lpa_questions_path
  end
end
