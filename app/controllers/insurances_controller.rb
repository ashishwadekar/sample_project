class InsurancesController < ApplicationController
  before_action :set_insurance, only: %i[ show update destroy ]

  # GET /insurances
  # GET /insurances.json
  def index
    @insurances = Insurance.all
  end

  # GET /insurances/1
  # GET /insurances/1.json
  def show
  end

  # POST /insurances
  # POST /insurances.json
  def create
    @insurance = Insurance.new(insurance_params)

    if @insurance.save
      render :show, status: :created, location: @insurance
    else
      render json: @insurance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /insurances/1
  # PATCH/PUT /insurances/1.json
  def update
    if @insurance.update(insurance_params)
      render :show, status: :ok, location: @insurance
    else
      render json: @insurance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /insurances/1
  # DELETE /insurances/1.json
  def destroy
    @insurance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insurance
      @insurance = Insurance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def insurance_params
      params.require(:insurance).permit(:insurance_name, :insurance_duration)
    end
end
