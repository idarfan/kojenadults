require 'test_helper'

class AdultsGraduatedsControllerTest < ActionController::TestCase
  setup do
    @adults_graduated = adults_graduateds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_graduateds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_graduated" do
    assert_difference('AdultsGraduated.count') do
      post :create, :adults_graduated => @adults_graduated.attributes
    end

    assert_redirected_to adults_graduated_path(assigns(:adults_graduated))
  end

  test "should show adults_graduated" do
    get :show, :id => @adults_graduated.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_graduated.to_param
    assert_response :success
  end

  test "should update adults_graduated" do
    put :update, :id => @adults_graduated.to_param, :adults_graduated => @adults_graduated.attributes
    assert_redirected_to adults_graduated_path(assigns(:adults_graduated))
  end

  test "should destroy adults_graduated" do
    assert_difference('AdultsGraduated.count', -1) do
      delete :destroy, :id => @adults_graduated.to_param
    end

    assert_redirected_to adults_graduateds_path
  end
end
