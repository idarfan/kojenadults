require 'test_helper'

class AdultsSessionDescriptionsControllerTest < ActionController::TestCase
  setup do
    @adults_session_description = adults_session_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_session_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_session_description" do
    assert_difference('AdultsSessionDescription.count') do
      post :create, :adults_session_description => @adults_session_description.attributes
    end

    assert_redirected_to adults_session_description_path(assigns(:adults_session_description))
  end

  test "should show adults_session_description" do
    get :show, :id => @adults_session_description.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_session_description.to_param
    assert_response :success
  end

  test "should update adults_session_description" do
    put :update, :id => @adults_session_description.to_param, :adults_session_description => @adults_session_description.attributes
    assert_redirected_to adults_session_description_path(assigns(:adults_session_description))
  end

  test "should destroy adults_session_description" do
    assert_difference('AdultsSessionDescription.count', -1) do
      delete :destroy, :id => @adults_session_description.to_param
    end

    assert_redirected_to adults_session_descriptions_path
  end
end
