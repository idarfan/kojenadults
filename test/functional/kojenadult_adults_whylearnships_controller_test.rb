require 'test_helper'

class KojenadultAdultsWhylearnshipsControllerTest < ActionController::TestCase
  setup do
    @kojenadult_adults_whylearnship = kojenadult_adults_whylearnships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadult_adults_whylearnships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadult_adults_whylearnship" do
    assert_difference('KojenadultAdultsWhylearnship.count') do
      post :create, :kojenadult_adults_whylearnship => @kojenadult_adults_whylearnship.attributes
    end

    assert_redirected_to kojenadult_adults_whylearnship_path(assigns(:kojenadult_adults_whylearnship))
  end

  test "should show kojenadult_adults_whylearnship" do
    get :show, :id => @kojenadult_adults_whylearnship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadult_adults_whylearnship.to_param
    assert_response :success
  end

  test "should update kojenadult_adults_whylearnship" do
    put :update, :id => @kojenadult_adults_whylearnship.to_param, :kojenadult_adults_whylearnship => @kojenadult_adults_whylearnship.attributes
    assert_redirected_to kojenadult_adults_whylearnship_path(assigns(:kojenadult_adults_whylearnship))
  end

  test "should destroy kojenadult_adults_whylearnship" do
    assert_difference('KojenadultAdultsWhylearnship.count', -1) do
      delete :destroy, :id => @kojenadult_adults_whylearnship.to_param
    end

    assert_redirected_to kojenadult_adults_whylearnships_path
  end
end
