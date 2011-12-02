require 'test_helper'

class KojenadultsClasseShipsControllerTest < ActionController::TestCase
  setup do
    @kojenadults_classe_ship = kojenadults_classe_ships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadults_classe_ships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadults_classe_ship" do
    assert_difference('KojenadultsClasseShip.count') do
      post :create, :kojenadults_classe_ship => @kojenadults_classe_ship.attributes
    end

    assert_redirected_to kojenadults_classe_ship_path(assigns(:kojenadults_classe_ship))
  end

  test "should show kojenadults_classe_ship" do
    get :show, :id => @kojenadults_classe_ship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadults_classe_ship.to_param
    assert_response :success
  end

  test "should update kojenadults_classe_ship" do
    put :update, :id => @kojenadults_classe_ship.to_param, :kojenadults_classe_ship => @kojenadults_classe_ship.attributes
    assert_redirected_to kojenadults_classe_ship_path(assigns(:kojenadults_classe_ship))
  end

  test "should destroy kojenadults_classe_ship" do
    assert_difference('KojenadultsClasseShip.count', -1) do
      delete :destroy, :id => @kojenadults_classe_ship.to_param
    end

    assert_redirected_to kojenadults_classe_ships_path
  end
end
