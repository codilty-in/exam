require 'test_helper'

class UserAnswersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => UserAnswer.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    UserAnswer.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    UserAnswer.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to user_answer_url(assigns(:user_answer))
  end

  def test_edit
    get :edit, :id => UserAnswer.first
    assert_template 'edit'
  end

  def test_update_invalid
    UserAnswer.any_instance.stubs(:valid?).returns(false)
    put :update, :id => UserAnswer.first
    assert_template 'edit'
  end

  def test_update_valid
    UserAnswer.any_instance.stubs(:valid?).returns(true)
    put :update, :id => UserAnswer.first
    assert_redirected_to user_answer_url(assigns(:user_answer))
  end

  def test_destroy
    user_answer = UserAnswer.first
    delete :destroy, :id => user_answer
    assert_redirected_to user_answers_url
    assert !UserAnswer.exists?(user_answer.id)
  end
end
