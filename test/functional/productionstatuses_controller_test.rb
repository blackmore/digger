require 'test_helper'

class ProductionstatusesControllerTest < ActionController::TestCase
  setup do
    @productionstatus = productionstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productionstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productionstatus" do
    assert_difference('Productionstatus.count') do
      post :create, productionstatus: @productionstatus.attributes
    end

    assert_redirected_to productionstatus_path(assigns(:productionstatus))
  end

  test "should show productionstatus" do
    get :show, id: @productionstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productionstatus
    assert_response :success
  end

  test "should update productionstatus" do
    put :update, id: @productionstatus, productionstatus: @productionstatus.attributes
    assert_redirected_to productionstatus_path(assigns(:productionstatus))
  end

  test "should destroy productionstatus" do
    assert_difference('Productionstatus.count', -1) do
      delete :destroy, id: @productionstatus
    end

    assert_redirected_to productionstatuses_path
  end
end
