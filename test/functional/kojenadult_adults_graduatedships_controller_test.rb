require 'test_helper'

class KojenadultAdultsGraduatedshipsControllerTest < ActionController::TestCase
  setup do
    @kojenadult_adults_graduatedship = kojenadult_adults_graduatedships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadult_adults_graduatedships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadult_adults_graduatedship" do
    assert_difference('KojenadultAdultsGraduatedship.count') do
      post :create, :kojenadult_adults_graduatedship => @kojenadult_adults_graduatedship.attributes
    end

    assert_redirected_to kojenadult_adults_graduatedship_path(assigns(:kojenadult_adults_graduatedship))
  end

  test "should show kojenadult_adults_graduatedship" do
    get :show, :id => @kojenadult_adults_graduatedship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadult_adults_graduatedship.to_param
    assert_response :success
  end

  test "should update kojenadult_adults_graduatedship" do
    put :update, :id => @kojenadult_adults_graduatedship.to_param, :kojenadult_adults_graduatedship => @kojenadult_adults_graduatedship.attributes
    assert_redirected_to kojenadult_adults_graduatedship_path(assigns(:kojenadult_adults_graduatedship))
  end

  test "should destroy kojenadult_adults_graduatedship" do
    assert_difference('KojenadultAdultsGraduatedship.count', -1) do
      delete :destroy, :id => @kojenadult_adults_graduatedship.to_param
    end

    assert_redirected_to kojenadult_adults_graduatedships_path
  end
end
