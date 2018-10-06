require 'test_helper'

class CuposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cupo = cupos(:one)
  end

  test "should get index" do
    get cupos_url, as: :json
    assert_response :success
  end

  test "should create cupo" do
    assert_difference('Cupo.count') do
      post cupos_url, params: { cupo: { cantidad: @cupo.cantidad, parqueadero_id: @cupo.parqueadero_id, tipo_de_cupo_id: @cupo.tipo_de_cupo_id } }, as: :json
    end

    assert_response 201
  end

  test "should show cupo" do
    get cupo_url(@cupo), as: :json
    assert_response :success
  end

  test "should update cupo" do
    patch cupo_url(@cupo), params: { cupo: { cantidad: @cupo.cantidad, parqueadero_id: @cupo.parqueadero_id, tipo_de_cupo_id: @cupo.tipo_de_cupo_id } }, as: :json
    assert_response 200
  end

  test "should destroy cupo" do
    assert_difference('Cupo.count', -1) do
      delete cupo_url(@cupo), as: :json
    end

    assert_response 204
  end
end
