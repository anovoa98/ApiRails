class TypeVehiclesController < ApplicationController
  before_action :set_type_vehicle, only: [:show, :update, :destroy]

  # GET /type_vehicles
  def index
    @type_vehicles = TypeVehicle.all

    render json: @type_vehicles
  end

  # GET /type_vehicles/1
  def show
    render json: @type_vehicle
  end

  # POST /type_vehicles
  def create
    @type_vehicle = TypeVehicle.new(type_vehicle_params)

    if @type_vehicle.save
      render json: @type_vehicle, status: :created, location: @type_vehicle
    else
      render json: @type_vehicle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /type_vehicles/1
  def update
    if @type_vehicle.update(type_vehicle_params)
      render json: @type_vehicle
    else
      render json: @type_vehicle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /type_vehicles/1
  def destroy
    @type_vehicle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_vehicle
      @type_vehicle = TypeVehicle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def type_vehicle_params
      params.require(:type_vehicle).permit(:truckCrane, :motorcycleCrane, :workshopCar, :motorcicleWorkshop)
    end
end
