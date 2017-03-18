require 'test_helper'

class TheQuestionsControllerTest < ActionController::TestCase
  setup do
    @the_question = the_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:the_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create the_question" do
    assert_difference('TheQuestion.count') do
      post :create, the_question: { answer1: @the_question.answer1, answer2: @the_question.answer2, answer3: @the_question.answer3, answer4: @the_question.answer4, field1: @the_question.field1, field2: @the_question.field2, field3: @the_question.field3, field4: @the_question.field4, question: @the_question.question, weight: @the_question.weight }
    end

    assert_redirected_to the_question_path(assigns(:the_question))
  end

  test "should show the_question" do
    get :show, id: @the_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @the_question
    assert_response :success
  end

  test "should update the_question" do
    patch :update, id: @the_question, the_question: { answer1: @the_question.answer1, answer2: @the_question.answer2, answer3: @the_question.answer3, answer4: @the_question.answer4, field1: @the_question.field1, field2: @the_question.field2, field3: @the_question.field3, field4: @the_question.field4, question: @the_question.question, weight: @the_question.weight }
    assert_redirected_to the_question_path(assigns(:the_question))
  end

  test "should destroy the_question" do
    assert_difference('TheQuestion.count', -1) do
      delete :destroy, id: @the_question
    end

    assert_redirected_to the_questions_path
  end
end
