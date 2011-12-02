require 'test_helper'

class KojenadultAdultsLocalexamedshipsControllerTest < ActionController::TestCase
  setup do
    @kojenadult_adults_localexamedship = kojenadult_adults_localexamedships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadult_adults_localexamedships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadult_adults_localexamedship" do
    assert_difference('KojenadultAdultsLocalexamedship.count') do
      post :create, :kojenadult_adults_localexamedship => @kojenadult_adults_localexamedship.attributes
    end

    assert_redirected_to kojenadult_adults_localexamedship_path(assigns(:kojenadult_adults_localexamedship))
  end

  test "should show kojenadult_adults_localexamedship" do
    get :show, :id => @kojenadult_adults_localexamedship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadult_adults_localexamedship.to_param
    assert_response :success
  end

  test "should update kojenadult_adults_localexamedship" do
    put :update, :id => @kojenadult_adults_localexamedship.to_param, :kojenadult_adults_localexamedship => @kojenadult_adults_localexamedship.attributes
    assert_redirected_to kojenadult_adults_localexamedship_path(assigns(:kojenadult_adults_localexamedship))
  end

  test "should destroy kojenadult_adults_localexamedship" do
    assert_difference('KojenadultAdultsLocalexamedship.count', -1) do
      delete :destroy, :id => @kojenadult_adults_localexamedship.to_param
    end

    assert_redirected_to kojenadult_adults_localexamedships_path
  end
end
