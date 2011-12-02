require 'test_helper'

class AdultsWhylearnsControllerTest < ActionController::TestCase
  setup do
    @adults_whylearn = adults_whylearns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_whylearns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_whylearn" do
    assert_difference('AdultsWhylearn.count') do
      post :create, :adults_whylearn => @adults_whylearn.attributes
    end

    assert_redirected_to adults_whylearn_path(assigns(:adults_whylearn))
  end

  test "should show adults_whylearn" do
    get :show, :id => @adults_whylearn.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_whylearn.to_param
    assert_response :success
  end

  test "should update adults_whylearn" do
    put :update, :id => @adults_whylearn.to_param, :adults_whylearn => @adults_whylearn.attributes
    assert_redirected_to adults_whylearn_path(assigns(:adults_whylearn))
  end

  test "should destroy adults_whylearn" do
    assert_difference('AdultsWhylearn.count', -1) do
      delete :destroy, :id => @adults_whylearn.to_param
    end

    assert_redirected_to adults_whylearns_path
  end
end
