require 'test_helper'

class KojenadultSessionDescriptionshipsControllerTest < ActionController::TestCase
  setup do
    @kojenadult_session_descriptionship = kojenadult_session_descriptionships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadult_session_descriptionships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadult_session_descriptionship" do
    assert_difference('KojenadultSessionDescriptionship.count') do
      post :create, :kojenadult_session_descriptionship => @kojenadult_session_descriptionship.attributes
    end

    assert_redirected_to kojenadult_session_descriptionship_path(assigns(:kojenadult_session_descriptionship))
  end

  test "should show kojenadult_session_descriptionship" do
    get :show, :id => @kojenadult_session_descriptionship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadult_session_descriptionship.to_param
    assert_response :success
  end

  test "should update kojenadult_session_descriptionship" do
    put :update, :id => @kojenadult_session_descriptionship.to_param, :kojenadult_session_descriptionship => @kojenadult_session_descriptionship.attributes
    assert_redirected_to kojenadult_session_descriptionship_path(assigns(:kojenadult_session_descriptionship))
  end

  test "should destroy kojenadult_session_descriptionship" do
    assert_difference('KojenadultSessionDescriptionship.count', -1) do
      delete :destroy, :id => @kojenadult_session_descriptionship.to_param
    end

    assert_redirected_to kojenadult_session_descriptionships_path
  end
end
