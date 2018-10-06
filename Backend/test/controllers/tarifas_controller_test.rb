require 'test_helper'

class TarifasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarifa = tarifas(:one)
  end

  test "should get index" do
    get tarifas_url, as: :json
    assert_response :success
  end

  test "should create tarifa" do
    assert_difference('Tarifa.count') do
      post tarifas_url, params: { tarifa: { descripcion: @tarifa.descripcion, parqueadero_id: @tarifa.parqueadero_id, tipo_de_cupo_id: @tarifa.tipo_de_cupo_id, valor_minuto: @tarifa.valor_minuto } }, as: :json
    end

    assert_response 201
  end

  test "should show tarifa" do
    get tarifa_url(@tarifa), as: :json
    assert_response :success
  end

  test "should update tarifa" do
    patch tarifa_url(@tarifa), params: { tarifa: { descripcion: @tarifa.descripcion, parqueadero_id: @tarifa.parqueadero_id, tipo_de_cupo_id: @tarifa.tipo_de_cupo_id, valor_minuto: @tarifa.valor_minuto } }, as: :json
    assert_response 200
  end

  test "should destroy tarifa" do
    assert_difference('Tarifa.count', -1) do
      delete tarifa_url(@tarifa), as: :json
    end

    assert_response 204
  end
end
