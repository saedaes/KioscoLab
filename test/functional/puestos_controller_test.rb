require 'test_helper'

class PuestosControllerTest < ActionController::TestCase
  setup do
    @puesto = puestos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puestos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puesto" do
    assert_difference('Puesto.count') do
      post :create, puesto: { Descripcion: @puesto.Descripcion, Nombre: @puesto.Nombre, idPuesto: @puesto.idPuesto }
    end

    assert_redirected_to puesto_path(assigns(:puesto))
  end

  test "should show puesto" do
    get :show, id: @puesto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puesto
    assert_response :success
  end

  test "should update puesto" do
    put :update, id: @puesto, puesto: { Descripcion: @puesto.Descripcion, Nombre: @puesto.Nombre, idPuesto: @puesto.idPuesto }
    assert_redirected_to puesto_path(assigns(:puesto))
  end

  test "should destroy puesto" do
    assert_difference('Puesto.count', -1) do
      delete :destroy, id: @puesto
    end

    assert_redirected_to puestos_path
  end
end
