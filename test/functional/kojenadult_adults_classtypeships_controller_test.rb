require 'test_helper'

class KojenadultAdultsClasstypeshipsControllerTest < ActionController::TestCase
  setup do
    @kojenadult_adults_classtypeship = kojenadult_adults_classtypeships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadult_adults_classtypeships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadult_adults_classtypeship" do
    assert_difference('KojenadultAdultsClasstypeship.count') do
      post :create, :kojenadult_adults_classtypeship => @kojenadult_adults_classtypeship.attributes
    end

    assert_redirected_to kojenadult_adults_classtypeship_path(assigns(:kojenadult_adults_classtypeship))
  end

  test "should show kojenadult_adults_classtypeship" do
    get :show, :id => @kojenadult_adults_classtypeship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadult_adults_classtypeship.to_param
    assert_response :success
  end

  test "should update kojenadult_adults_classtypeship" do
    put :update, :id => @kojenadult_adults_classtypeship.to_param, :kojenadult_adults_classtypeship => @kojenadult_adults_classtypeship.attributes
    assert_redirected_to kojenadult_adults_classtypeship_path(assigns(:kojenadult_adults_classtypeship))
  end

  test "should destroy kojenadult_adults_classtypeship" do
    assert_difference('KojenadultAdultsClasstypeship.count', -1) do
      delete :destroy, :id => @kojenadult_adults_classtypeship.to_param
    end

    assert_redirected_to kojenadult_adults_classtypeships_path
  end
end
