class BankAccountDetailsController < ApplicationController
  before_action :set_bank_account_detail, only: %i[ show update destroy ]

  # GET /bank_account_details
  # GET /bank_account_details.json
  def index
    @bank_account_details = BankAccountDetail.all
  end

  # GET /bank_account_details/1
  # GET /bank_account_details/1.json
  def show
  end

  # POST /bank_account_details
  # POST /bank_account_details.json
  def create
    @bank_account_detail = BankAccountDetail.new(bank_account_detail_params)

    if @bank_account_detail.save
      render :show, status: :created, location: @bank_account_detail
    else
      render json: @bank_account_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bank_account_details/1
  # PATCH/PUT /bank_account_details/1.json
  def update
    if @bank_account_detail.update(bank_account_detail_params)
      render :show, status: :ok, location: @bank_account_detail
    else
      render json: @bank_account_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bank_account_details/1
  # DELETE /bank_account_details/1.json
  def destroy
    @bank_account_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_account_detail
      @bank_account_detail = BankAccountDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bank_account_detail_params
      params.require(:bank_account_detail).permit(:account_no, :ifsc_code, :bank_name, :user_name)
    end
end
