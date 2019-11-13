require 'test_helper'

class TypeVehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_vehicle = type_vehicles(:one)
  end

  test "should get index" do
    get type_vehicles_url, as: :json
    assert_response :success
  end

  test "should create type_vehicle" do
    assert_difference('TypeVehicle.count') do
      post type_vehicles_url, params: { type_vehicle: { motorcicleWorkshop: @type_vehicle.motorcicleWorkshop, motorcycleCrane: @type_vehicle.motorcycleCrane, truckCrane: @type_vehicle.truckCrane, workshopCar: @type_vehicle.workshopCar } }, as: :json
    end

    assert_response 201
  end

  test "should show type_vehicle" do
    get type_vehicle_url(@type_vehicle), as: :json
    assert_response :success
  end

  test "should update type_vehicle" do
    patch type_vehicle_url(@type_vehicle), params: { type_vehicle: { motorcicleWorkshop: @type_vehicle.motorcicleWorkshop, motorcycleCrane: @type_vehicle.motorcycleCrane, truckCrane: @type_vehicle.truckCrane, workshopCar: @type_vehicle.workshopCar } }, as: :json
    assert_response 200
  end

  test "should destroy type_vehicle" do
    assert_difference('TypeVehicle.count', -1) do
      delete type_vehicle_url(@type_vehicle), as: :json
    end

    assert_response 204
  end
end
