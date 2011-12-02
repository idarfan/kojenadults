require 'test_helper'

class KojenadultAdultsHowyouknowushipsControllerTest < ActionController::TestCase
  setup do
    @kojenadult_adults_howyouknowuship = kojenadult_adults_howyouknowuships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadult_adults_howyouknowuships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadult_adults_howyouknowuship" do
    assert_difference('KojenadultAdultsHowyouknowuship.count') do
      post :create, :kojenadult_adults_howyouknowuship => @kojenadult_adults_howyouknowuship.attributes
    end

    assert_redirected_to kojenadult_adults_howyouknowuship_path(assigns(:kojenadult_adults_howyouknowuship))
  end

  test "should show kojenadult_adults_howyouknowuship" do
    get :show, :id => @kojenadult_adults_howyouknowuship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadult_adults_howyouknowuship.to_param
    assert_response :success
  end

  test "should update kojenadult_adults_howyouknowuship" do
    put :update, :id => @kojenadult_adults_howyouknowuship.to_param, :kojenadult_adults_howyouknowuship => @kojenadult_adults_howyouknowuship.attributes
    assert_redirected_to kojenadult_adults_howyouknowuship_path(assigns(:kojenadult_adults_howyouknowuship))
  end

  test "should destroy kojenadult_adults_howyouknowuship" do
    assert_difference('KojenadultAdultsHowyouknowuship.count', -1) do
      delete :destroy, :id => @kojenadult_adults_howyouknowuship.to_param
    end

    assert_redirected_to kojenadult_adults_howyouknowuships_path
  end
end
