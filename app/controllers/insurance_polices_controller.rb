class InsurancePolicesController < ApplicationController
  before_action :set_insurance_police, only: [:show, :update, :destroy]

  # GET /insurance_polices
  def index
    @insurance_polices = InsurancePolice.all

    render json: @insurance_polices
  end

  # GET /insurance_polices/1
  def show
    render json: @insurance_police
  end

  # POST /insurance_polices
  def create
    @insurance_police = InsurancePolice.new(insurance_police_params)

    if @insurance_police.save
      render json: @insurance_police, status: :created, location: @insurance_police
    else
      render json: @insurance_police.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /insurance_polices/1
  def update
    if @insurance_police.update(insurance_police_params)
      render json: @insurance_police
    else
      render json: @insurance_police.errors, status: :unprocessable_entity
    end
  end

  # DELETE /insurance_polices/1
  def destroy
    @insurance_police.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insurance_police
      @insurance_police = InsurancePolice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def insurance_police_params
      params.require(:insurance_police).permit(:basic, :standard, :premium)
    end
end
