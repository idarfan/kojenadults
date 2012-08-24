require 'test_helper'

class AdultsClasstypesControllerTest < ActionController::TestCase
  setup do
    @adults_classtype = adults_classtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_classtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_classtype" do
    assert_difference('AdultsClasstype.count') do
      post :create, :adults_classtype => @adults_classtype.attributes
    end

    assert_redirected_to adults_classtype_path(assigns(:adults_classtype))
  end

  test "should show adults_classtype" do
    get :show, :id => @adults_classtype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_classtype.to_param
    assert_response :success
  end

  test "should update adults_classtype" do
    put :update, :id => @adults_classtype.to_param, :adults_classtype => @adults_classtype.attributes
    assert_redirected_to adults_classtype_path(assigns(:adults_classtype))
  end

  test "should destroy adults_classtype" do
    assert_difference('AdultsClasstype.count', -1) do
      delete :destroy, :id => @adults_classtype.to_param
    end

    assert_redirected_to adults_classtypes_path
  end
end
