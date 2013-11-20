require 'test_helper'

class ChildsSessionDescriptionsControllerTest < ActionController::TestCase
  setup do
    @childs_session_description = childs_session_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:childs_session_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create childs_session_description" do
    assert_difference('ChildsSessionDescription.count') do
      post :create, childs_session_description: { class_description: @childs_session_description.class_description, classname: @childs_session_description.classname }
    end

    assert_redirected_to childs_session_description_path(assigns(:childs_session_description))
  end

  test "should show childs_session_description" do
    get :show, id: @childs_session_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @childs_session_description
    assert_response :success
  end

  test "should update childs_session_description" do
    put :update, id: @childs_session_description, childs_session_description: { class_description: @childs_session_description.class_description, classname: @childs_session_description.classname }
    assert_redirected_to childs_session_description_path(assigns(:childs_session_description))
  end

  test "should destroy childs_session_description" do
    assert_difference('ChildsSessionDescription.count', -1) do
      delete :destroy, id: @childs_session_description
    end

    assert_redirected_to childs_session_descriptions_path
  end
end
