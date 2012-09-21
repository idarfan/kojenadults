require 'test_helper'

class AdultsOnlinesControllerTest < ActionController::TestCase
  setup do
    @adults_online = adults_onlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_onlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_online" do
    assert_difference('AdultsOnline.count') do
      post :create, :adults_online => @adults_online.attributes
    end

    assert_redirected_to adults_online_path(assigns(:adults_online))
  end

  test "should show adults_online" do
    get :show, :id => @adults_online.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_online.to_param
    assert_response :success
  end

  test "should update adults_online" do
    put :update, :id => @adults_online.to_param, :adults_online => @adults_online.attributes
    assert_redirected_to adults_online_path(assigns(:adults_online))
  end

  test "should destroy adults_online" do
    assert_difference('AdultsOnline.count', -1) do
      delete :destroy, :id => @adults_online.to_param
    end

    assert_redirected_to adults_onlines_path
  end
end
