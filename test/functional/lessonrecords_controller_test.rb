require 'test_helper'

class LessonrecordsControllerTest < ActionController::TestCase
  setup do
    @lessonrecord = lessonrecords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lessonrecords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lessonrecord" do
    assert_difference('Lessonrecord.count') do
      post :create, :lessonrecord => @lessonrecord.attributes
    end

    assert_redirected_to lessonrecord_path(assigns(:lessonrecord))
  end

  test "should show lessonrecord" do
    get :show, :id => @lessonrecord.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lessonrecord.to_param
    assert_response :success
  end

  test "should update lessonrecord" do
    put :update, :id => @lessonrecord.to_param, :lessonrecord => @lessonrecord.attributes
    assert_redirected_to lessonrecord_path(assigns(:lessonrecord))
  end

  test "should destroy lessonrecord" do
    assert_difference('Lessonrecord.count', -1) do
      delete :destroy, :id => @lessonrecord.to_param
    end

    assert_redirected_to lessonrecords_path
  end
end
