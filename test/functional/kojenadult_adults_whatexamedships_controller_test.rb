require 'test_helper'

class KojenadultAdultsWhatexamedshipsControllerTest < ActionController::TestCase
  setup do
    @kojenadult_adults_whatexamedship = kojenadult_adults_whatexamedships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadult_adults_whatexamedships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadult_adults_whatexamedship" do
    assert_difference('KojenadultAdultsWhatexamedship.count') do
      post :create, :kojenadult_adults_whatexamedship => @kojenadult_adults_whatexamedship.attributes
    end

    assert_redirected_to kojenadult_adults_whatexamedship_path(assigns(:kojenadult_adults_whatexamedship))
  end

  test "should show kojenadult_adults_whatexamedship" do
    get :show, :id => @kojenadult_adults_whatexamedship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadult_adults_whatexamedship.to_param
    assert_response :success
  end

  test "should update kojenadult_adults_whatexamedship" do
    put :update, :id => @kojenadult_adults_whatexamedship.to_param, :kojenadult_adults_whatexamedship => @kojenadult_adults_whatexamedship.attributes
    assert_redirected_to kojenadult_adults_whatexamedship_path(assigns(:kojenadult_adults_whatexamedship))
  end

  test "should destroy kojenadult_adults_whatexamedship" do
    assert_difference('KojenadultAdultsWhatexamedship.count', -1) do
      delete :destroy, :id => @kojenadult_adults_whatexamedship.to_param
    end

    assert_redirected_to kojenadult_adults_whatexamedships_path
  end
end
