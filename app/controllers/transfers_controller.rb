class TransfersController < ApplicationController
  before_action :set_transfer, only: %i[ show update destroy ]

  # GET /transfers
  # GET /transfers.json
  def index
    @transfers = Transfer.all
  end

  # GET /transfers/1
  # GET /transfers/1.json
  def show
  end

  # POST /transfers
  # POST /transfers.json
  def create
    @transfer = Transfer.new(transfer_params)

    if @transfer.save
      render :show, status: :created, location: @transfer
    else
      render json: @transfer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transfers/1
  # PATCH/PUT /transfers/1.json
  def update
    if @transfer.update(transfer_params)
      render :show, status: :ok, location: @transfer
    else
      render json: @transfer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transfers/1
  # DELETE /transfers/1.json
  def destroy
    @transfer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transfer
      @transfer = Transfer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transfer_params
      params.require(:transfer).permit(:recipient_account_number, :recipient_name, :amount)
    end
end
