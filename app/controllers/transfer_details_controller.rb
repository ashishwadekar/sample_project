class TransferDetailsController < ApplicationController
  before_action :set_transfer_detail, only: %i[ show update destroy ]

  # GET /transfer_details
  # GET /transfer_details.json
  def index
    @transfer_details = TransferDetail.all
  end

  # GET /transfer_details/1
  # GET /transfer_details/1.json
  def show
  end

  # POST /transfer_details
  # POST /transfer_details.json
  def create
    @transfer_detail = TransferDetail.new(transfer_detail_params)

    if @transfer_detail.save
      render :show, status: :created, location: @transfer_detail
    else
      render json: @transfer_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transfer_details/1
  # PATCH/PUT /transfer_details/1.json
  def update
    if @transfer_detail.update(transfer_detail_params)
      render :show, status: :ok, location: @transfer_detail
    else
      render json: @transfer_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transfer_details/1
  # DELETE /transfer_details/1.json
  def destroy
    @transfer_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transfer_detail
      @transfer_detail = TransferDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transfer_detail_params
      params.require(:transfer_detail).permit(:recipient_name, :recipient_account_number, :amount)
    end
end
