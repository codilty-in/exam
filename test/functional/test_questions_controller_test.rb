require 'test_helper'

class TestQuestionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => TestQuestion.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    TestQuestion.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    TestQuestion.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to test_question_url(assigns(:test_question))
  end

  def test_edit
    get :edit, :id => TestQuestion.first
    assert_template 'edit'
  end

  def test_update_invalid
    TestQuestion.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TestQuestion.first
    assert_template 'edit'
  end

  def test_update_valid
    TestQuestion.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TestQuestion.first
    assert_redirected_to test_question_url(assigns(:test_question))
  end

  def test_destroy
    test_question = TestQuestion.first
    delete :destroy, :id => test_question
    assert_redirected_to test_questions_url
    assert !TestQuestion.exists?(test_question.id)
  end
end
