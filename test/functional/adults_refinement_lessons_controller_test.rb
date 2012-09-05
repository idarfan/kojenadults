require 'test_helper'

class AdultsRefinementLessonsControllerTest < ActionController::TestCase
  setup do
    @adults_refinement_lesson = adults_refinement_lessons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adults_refinement_lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adults_refinement_lesson" do
    assert_difference('AdultsRefinementLesson.count') do
      post :create, :adults_refinement_lesson => @adults_refinement_lesson.attributes
    end

    assert_redirected_to adults_refinement_lesson_path(assigns(:adults_refinement_lesson))
  end

  test "should show adults_refinement_lesson" do
    get :show, :id => @adults_refinement_lesson.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adults_refinement_lesson.to_param
    assert_response :success
  end

  test "should update adults_refinement_lesson" do
    put :update, :id => @adults_refinement_lesson.to_param, :adults_refinement_lesson => @adults_refinement_lesson.attributes
    assert_redirected_to adults_refinement_lesson_path(assigns(:adults_refinement_lesson))
  end

  test "should destroy adults_refinement_lesson" do
    assert_difference('AdultsRefinementLesson.count', -1) do
      delete :destroy, :id => @adults_refinement_lesson.to_param
    end

    assert_redirected_to adults_refinement_lessons_path
  end
end
