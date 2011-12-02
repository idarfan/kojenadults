require 'test_helper'

class KojenadultClassesControllerTest < ActionController::TestCase
  setup do
    @kojenadult_class = kojenadult_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadult_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadult_class" do
    assert_difference('KojenadultClasse.count') do
      post :create, :kojenadult_class => @kojenadult_class.attributes
    end

    assert_redirected_to kojenadult_class_path(assigns(:kojenadult_class))
  end

  test "should show kojenadult_class" do
    get :show, :id => @kojenadult_class.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadult_class.to_param
    assert_response :success
  end

  test "should update kojenadult_class" do
    put :update, :id => @kojenadult_class.to_param, :kojenadult_class => @kojenadult_class.attributes
    assert_redirected_to kojenadult_class_path(assigns(:kojenadult_class))
  end

  test "should destroy kojenadult_class" do
    assert_difference('KojenadultClasse.count', -1) do
      delete :destroy, :id => @kojenadult_class.to_param
    end

    assert_redirected_to kojenadult_classes_path
  end
end
