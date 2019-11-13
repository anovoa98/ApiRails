require 'test_helper'

class PlacasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @placa = placas(:one)
  end

  test "should get index" do
    get placas_url, as: :json
    assert_response :success
  end

  test "should create placa" do
    assert_difference('Placa.count') do
      post placas_url, params: { placa: { belongs_to: @placa.belongs_to, color: @placa.color, transitlog: @placa.transitlog } }, as: :json
    end

    assert_response 201
  end

  test "should show placa" do
    get placa_url(@placa), as: :json
    assert_response :success
  end

  test "should update placa" do
    patch placa_url(@placa), params: { placa: { belongs_to: @placa.belongs_to, color: @placa.color, transitlog: @placa.transitlog } }, as: :json
    assert_response 200
  end

  test "should destroy placa" do
    assert_difference('Placa.count', -1) do
      delete placa_url(@placa), as: :json
    end

    assert_response 204
  end
end
