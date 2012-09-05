require 'test_helper'

class KojenadultAdultsRefinementLessonshipsControllerTest < ActionController::TestCase
  setup do
    @kojenadult_adults_refinement_lessonship = kojenadult_adults_refinement_lessonships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kojenadult_adults_refinement_lessonships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kojenadult_adults_refinement_lessonship" do
    assert_difference('KojenadultAdultsRefinementLessonship.count') do
      post :create, :kojenadult_adults_refinement_lessonship => @kojenadult_adults_refinement_lessonship.attributes
    end

    assert_redirected_to kojenadult_adults_refinement_lessonship_path(assigns(:kojenadult_adults_refinement_lessonship))
  end

  test "should show kojenadult_adults_refinement_lessonship" do
    get :show, :id => @kojenadult_adults_refinement_lessonship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kojenadult_adults_refinement_lessonship.to_param
    assert_response :success
  end

  test "should update kojenadult_adults_refinement_lessonship" do
    put :update, :id => @kojenadult_adults_refinement_lessonship.to_param, :kojenadult_adults_refinement_lessonship => @kojenadult_adults_refinement_lessonship.attributes
    assert_redirected_to kojenadult_adults_refinement_lessonship_path(assigns(:kojenadult_adults_refinement_lessonship))
  end

  test "should destroy kojenadult_adults_refinement_lessonship" do
    assert_difference('KojenadultAdultsRefinementLessonship.count', -1) do
      delete :destroy, :id => @kojenadult_adults_refinement_lessonship.to_param
    end

    assert_redirected_to kojenadult_adults_refinement_lessonships_path
  end
end
