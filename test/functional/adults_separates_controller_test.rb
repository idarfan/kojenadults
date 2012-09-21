require 'test_helper'

class AdultsSeparatesControllerTest < ActionController::TestCase
  setup do
    @adults_separate = adults_separates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_separates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_separate" do
    assert_difference('AdultsSeparate.count') do
      post :create, :adults_separate => @adults_separate.attributes
    end

    assert_redirected_to adults_separate_path(assigns(:adults_separate))
  end

  test "should show adults_separate" do
    get :show, :id => @adults_separate.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_separate.to_param
    assert_response :success
  end

  test "should update adults_separate" do
    put :update, :id => @adults_separate.to_param, :adults_separate => @adults_separate.attributes
    assert_redirected_to adults_separate_path(assigns(:adults_separate))
  end

  test "should destroy adults_separate" do
    assert_difference('AdultsSeparate.count', -1) do
      delete :destroy, :id => @adults_separate.to_param
    end

    assert_redirected_to adults_separates_path
  end
end
