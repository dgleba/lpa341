require 'test_helper'

class LpaAnswersControllerTest < ActionController::TestCase
  setup do
    @lpa_answer = lpa_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lpa_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lpa_answer" do
    assert_difference('LpaAnswer.count') do
      post :create, lpa_answer: { action_taken: @lpa_answer.action_taken, body: @lpa_answer.body, issue_description: @lpa_answer.issue_description, question_id: @lpa_answer.question_id, user_id: @lpa_answer.user_id }
    end

    assert_redirected_to lpa_answer_path(assigns(:lpa_answer))
  end

  test "should show lpa_answer" do
    get :show, id: @lpa_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lpa_answer
    assert_response :success
  end

  test "should update lpa_answer" do
    patch :update, id: @lpa_answer, lpa_answer: { action_taken: @lpa_answer.action_taken, body: @lpa_answer.body, issue_description: @lpa_answer.issue_description, question_id: @lpa_answer.question_id, user_id: @lpa_answer.user_id }
    assert_redirected_to lpa_answer_path(assigns(:lpa_answer))
  end

  test "should destroy lpa_answer" do
    assert_difference('LpaAnswer.count', -1) do
      delete :destroy, id: @lpa_answer
    end

    assert_redirected_to lpa_answers_path
  end
end
