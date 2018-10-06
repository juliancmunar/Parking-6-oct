require 'test_helper'

class TiposDeCuposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipos_de_cupo = tipos_de_cupos(:one)
  end

  test "should get index" do
    get tipos_de_cupos_url, as: :json
    assert_response :success
  end

  test "should create tipos_de_cupo" do
    assert_difference('TiposDeCupo.count') do
      post tipos_de_cupos_url, params: { tipos_de_cupo: { tipo_de_cupo: @tipos_de_cupo.tipo_de_cupo } }, as: :json
    end

    assert_response 201
  end

  test "should show tipos_de_cupo" do
    get tipos_de_cupo_url(@tipos_de_cupo), as: :json
    assert_response :success
  end

  test "should update tipos_de_cupo" do
    patch tipos_de_cupo_url(@tipos_de_cupo), params: { tipos_de_cupo: { tipo_de_cupo: @tipos_de_cupo.tipo_de_cupo } }, as: :json
    assert_response 200
  end

  test "should destroy tipos_de_cupo" do
    assert_difference('TiposDeCupo.count', -1) do
      delete tipos_de_cupo_url(@tipos_de_cupo), as: :json
    end

    assert_response 204
  end
end
