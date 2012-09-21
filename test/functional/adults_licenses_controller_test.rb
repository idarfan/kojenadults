require 'test_helper'

class AdultsLicensesControllerTest < ActionController::TestCase
  setup do
    @adults_license = adults_licenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_licenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_license" do
    assert_difference('AdultsLicense.count') do
      post :create, :adults_license => @adults_license.attributes
    end

    assert_redirected_to adults_license_path(assigns(:adults_license))
  end

  test "should show adults_license" do
    get :show, :id => @adults_license.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_license.to_param
    assert_response :success
  end

  test "should update adults_license" do
    put :update, :id => @adults_license.to_param, :adults_license => @adults_license.attributes
    assert_redirected_to adults_license_path(assigns(:adults_license))
  end

  test "should destroy adults_license" do
    assert_difference('AdultsLicense.count', -1) do
      delete :destroy, :id => @adults_license.to_param
    end

    assert_redirected_to adults_licenses_path
  end
end
