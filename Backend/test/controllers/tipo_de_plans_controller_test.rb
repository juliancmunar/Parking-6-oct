require 'test_helper'

class TipoDePlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_plan = tipo_de_plans(:one)
  end

  test "should get index" do
    get tipo_de_plans_url, as: :json
    assert_response :success
  end

  test "should create tipo_de_plan" do
    assert_difference('TipoDePlan.count') do
      post tipo_de_plans_url, params: { tipo_de_plan: { tipo_de_plan: @tipo_de_plan.tipo_de_plan } }, as: :json
    end

    assert_response 201
  end

  test "should show tipo_de_plan" do
    get tipo_de_plan_url(@tipo_de_plan), as: :json
    assert_response :success
  end

  test "should update tipo_de_plan" do
    patch tipo_de_plan_url(@tipo_de_plan), params: { tipo_de_plan: { tipo_de_plan: @tipo_de_plan.tipo_de_plan } }, as: :json
    assert_response 200
  end

  test "should destroy tipo_de_plan" do
    assert_difference('TipoDePlan.count', -1) do
      delete tipo_de_plan_url(@tipo_de_plan), as: :json
    end

    assert_response 204
  end
end
