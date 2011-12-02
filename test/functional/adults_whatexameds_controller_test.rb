require 'test_helper'

class AdultsWhatexamedsControllerTest < ActionController::TestCase
  setup do
    @adults_whatexamed = adults_whatexameds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_whatexameds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_whatexamed" do
    assert_difference('AdultsWhatexamed.count') do
      post :create, :adults_whatexamed => @adults_whatexamed.attributes
    end

    assert_redirected_to adults_whatexamed_path(assigns(:adults_whatexamed))
  end

  test "should show adults_whatexamed" do
    get :show, :id => @adults_whatexamed.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_whatexamed.to_param
    assert_response :success
  end

  test "should update adults_whatexamed" do
    put :update, :id => @adults_whatexamed.to_param, :adults_whatexamed => @adults_whatexamed.attributes
    assert_redirected_to adults_whatexamed_path(assigns(:adults_whatexamed))
  end

  test "should destroy adults_whatexamed" do
    assert_difference('AdultsWhatexamed.count', -1) do
      delete :destroy, :id => @adults_whatexamed.to_param
    end

    assert_redirected_to adults_whatexameds_path
  end
end
