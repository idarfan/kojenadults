require 'test_helper'

class AdultsLocalexamedsControllerTest < ActionController::TestCase
  setup do
    @adults_localexamed = adults_localexameds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_localexameds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_localexamed" do
    assert_difference('AdultsLocalexamed.count') do
      post :create, :adults_localexamed => @adults_localexamed.attributes
    end

    assert_redirected_to adults_localexamed_path(assigns(:adults_localexamed))
  end

  test "should show adults_localexamed" do
    get :show, :id => @adults_localexamed.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_localexamed.to_param
    assert_response :success
  end

  test "should update adults_localexamed" do
    put :update, :id => @adults_localexamed.to_param, :adults_localexamed => @adults_localexamed.attributes
    assert_redirected_to adults_localexamed_path(assigns(:adults_localexamed))
  end

  test "should destroy adults_localexamed" do
    assert_difference('AdultsLocalexamed.count', -1) do
      delete :destroy, :id => @adults_localexamed.to_param
    end

    assert_redirected_to adults_localexameds_path
  end
end
