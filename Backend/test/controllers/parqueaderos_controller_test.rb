require 'test_helper'

class ParqueaderosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parqueadero = parqueaderos(:one)
  end

  test "should get index" do
    get parqueaderos_url, as: :json
    assert_response :success
  end

  test "should create parqueadero" do
    assert_difference('Parqueadero.count') do
      post parqueaderos_url, params: { parqueadero: { calificacion: @parqueadero.calificacion, caracteristicas: @parqueadero.caracteristicas, condiciones: @parqueadero.condiciones, direccion: @parqueadero.direccion, email: @parqueadero.email, nombre: @parqueadero.nombre, servicios_adicionales: @parqueadero.servicios_adicionales, telefono1: @parqueadero.telefono1, telefono2: @parqueadero.telefono2 } }, as: :json
    end

    assert_response 201
  end

  test "should show parqueadero" do
    get parqueadero_url(@parqueadero), as: :json
    assert_response :success
  end

  test "should update parqueadero" do
    patch parqueadero_url(@parqueadero), params: { parqueadero: { calificacion: @parqueadero.calificacion, caracteristicas: @parqueadero.caracteristicas, condiciones: @parqueadero.condiciones, direccion: @parqueadero.direccion, email: @parqueadero.email, nombre: @parqueadero.nombre, servicios_adicionales: @parqueadero.servicios_adicionales, telefono1: @parqueadero.telefono1, telefono2: @parqueadero.telefono2 } }, as: :json
    assert_response 200
  end

  test "should destroy parqueadero" do
    assert_difference('Parqueadero.count', -1) do
      delete parqueadero_url(@parqueadero), as: :json
    end

    assert_response 204
  end
end
