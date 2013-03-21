require 'test_helper'

class AirCrewsControllerTest < ActionController::TestCase
  setup do
    @air_crew = air_crews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:air_crews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create air_crew" do
    assert_difference('AirCrew.count') do
      post :create, air_crew: { navigator: @air_crew.navigator, pilot: @air_crew.pilot }
    end

    assert_redirected_to air_crew_path(assigns(:air_crew))
  end

  test "should show air_crew" do
    get :show, id: @air_crew
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @air_crew
    assert_response :success
  end

  test "should update air_crew" do
    put :update, id: @air_crew, air_crew: { navigator: @air_crew.navigator, pilot: @air_crew.pilot }
    assert_redirected_to air_crew_path(assigns(:air_crew))
  end

  test "should destroy air_crew" do
    assert_difference('AirCrew.count', -1) do
      delete :destroy, id: @air_crew
    end

    assert_redirected_to air_crews_path
  end
end
