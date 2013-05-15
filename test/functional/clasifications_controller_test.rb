require 'test_helper'

class ClasificationsControllerTest < ActionController::TestCase
  setup do
    @clasification = clasifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clasifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clasification" do
    assert_difference('Clasification.count') do
      post :create, clasification: { descripcion: @clasification.descripcion, nombre: @clasification.nombre }
    end

    assert_redirected_to clasification_path(assigns(:clasification))
  end

  test "should show clasification" do
    get :show, id: @clasification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clasification
    assert_response :success
  end

  test "should update clasification" do
    put :update, id: @clasification, clasification: { descripcion: @clasification.descripcion, nombre: @clasification.nombre }
    assert_redirected_to clasification_path(assigns(:clasification))
  end

  test "should destroy clasification" do
    assert_difference('Clasification.count', -1) do
      delete :destroy, id: @clasification
    end

    assert_redirected_to clasifications_path
  end
end
