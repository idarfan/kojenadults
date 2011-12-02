require 'test_helper'

class AdultsHowyouknowusControllerTest < ActionController::TestCase
  setup do
    @adults_howyouknowu = adults_howyouknowus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_howyouknowus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_howyouknowu" do
    assert_difference('AdultsHowyouknowu.count') do
      post :create, :adults_howyouknowu => @adults_howyouknowu.attributes
    end

    assert_redirected_to adults_howyouknowu_path(assigns(:adults_howyouknowu))
  end

  test "should show adults_howyouknowu" do
    get :show, :id => @adults_howyouknowu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_howyouknowu.to_param
    assert_response :success
  end

  test "should update adults_howyouknowu" do
    put :update, :id => @adults_howyouknowu.to_param, :adults_howyouknowu => @adults_howyouknowu.attributes
    assert_redirected_to adults_howyouknowu_path(assigns(:adults_howyouknowu))
  end

  test "should destroy adults_howyouknowu" do
    assert_difference('AdultsHowyouknowu.count', -1) do
      delete :destroy, :id => @adults_howyouknowu.to_param
    end

    assert_redirected_to adults_howyouknowus_path
  end
end
