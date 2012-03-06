require 'test_helper'

class TimetrackingtypesControllerTest < ActionController::TestCase
  setup do
    @timetrackingtype = timetrackingtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timetrackingtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timetrackingtype" do
    assert_difference('Timetrackingtype.count') do
      post :create, timetrackingtype: @timetrackingtype.attributes
    end

    assert_redirected_to timetrackingtype_path(assigns(:timetrackingtype))
  end

  test "should show timetrackingtype" do
    get :show, id: @timetrackingtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timetrackingtype
    assert_response :success
  end

  test "should update timetrackingtype" do
    put :update, id: @timetrackingtype, timetrackingtype: @timetrackingtype.attributes
    assert_redirected_to timetrackingtype_path(assigns(:timetrackingtype))
  end

  test "should destroy timetrackingtype" do
    assert_difference('Timetrackingtype.count', -1) do
      delete :destroy, id: @timetrackingtype
    end

    assert_redirected_to timetrackingtypes_path
  end
end
