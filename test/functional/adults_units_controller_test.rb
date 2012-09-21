require 'test_helper'

class AdultsUnitsControllerTest < ActionController::TestCase
  setup do
    @adults_unit = adults_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_unit" do
    assert_difference('AdultsUnit.count') do
      post :create, :adults_unit => @adults_unit.attributes
    end

    assert_redirected_to adults_unit_path(assigns(:adults_unit))
  end

  test "should show adults_unit" do
    get :show, :id => @adults_unit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_unit.to_param
    assert_response :success
  end

  test "should update adults_unit" do
    put :update, :id => @adults_unit.to_param, :adults_unit => @adults_unit.attributes
    assert_redirected_to adults_unit_path(assigns(:adults_unit))
  end

  test "should destroy adults_unit" do
    assert_difference('AdultsUnit.count', -1) do
      delete :destroy, :id => @adults_unit.to_param
    end

    assert_redirected_to adults_units_path
  end
end
