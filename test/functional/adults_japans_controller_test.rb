require 'test_helper'

class AdultsJapansControllerTest < ActionController::TestCase
  setup do
    @adults_japan = adults_japans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_japans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_japan" do
    assert_difference('AdultsJapan.count') do
      post :create, :adults_japan => @adults_japan.attributes
    end

    assert_redirected_to adults_japan_path(assigns(:adults_japan))
  end

  test "should show adults_japan" do
    get :show, :id => @adults_japan.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_japan.to_param
    assert_response :success
  end

  test "should update adults_japan" do
    put :update, :id => @adults_japan.to_param, :adults_japan => @adults_japan.attributes
    assert_redirected_to adults_japan_path(assigns(:adults_japan))
  end

  test "should destroy adults_japan" do
    assert_difference('AdultsJapan.count', -1) do
      delete :destroy, :id => @adults_japan.to_param
    end

    assert_redirected_to adults_japans_path
  end
end
