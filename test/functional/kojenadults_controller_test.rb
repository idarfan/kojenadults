require 'test_helper'

class KojenadultsControllerTest < ActionController::TestCase
  setup do
    @kojenadult = kojenadults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadult" do
    assert_difference('Kojenadult.count') do
      post :create, :kojenadult => @kojenadult.attributes
    end

    assert_redirected_to kojenadult_path(assigns(:kojenadult))
  end

  test "should show kojenadult" do
    get :show, :id => @kojenadult.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadult.to_param
    assert_response :success
  end

  test "should update kojenadult" do
    put :update, :id => @kojenadult.to_param, :kojenadult => @kojenadult.attributes
    assert_redirected_to kojenadult_path(assigns(:kojenadult))
  end

  test "should destroy kojenadult" do
    assert_difference('Kojenadult.count', -1) do
      delete :destroy, :id => @kojenadult.to_param
    end

    assert_redirected_to kojenadults_path
  end
end
