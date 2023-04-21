class BankAccountTransactionsController < ApplicationController
  before_action :set_bank_account_transaction, only: %i[ show update destroy ]

  # GET /bank_account_transactions
  # GET /bank_account_transactions.json
  def index
    @bank_account_transactions = BankAccountTransaction.all
  end

  # GET /bank_account_transactions/1
  # GET /bank_account_transactions/1.json
  def show
  end

  # POST /bank_account_transactions
  # POST /bank_account_transactions.json
  def create
    @bank_account_transaction = BankAccountTransaction.new(bank_account_transaction_params)

    if @bank_account_transaction.save
      render :show, status: :created, location: @bank_account_transaction
    else
      render json: @bank_account_transaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bank_account_transactions/1
  # PATCH/PUT /bank_account_transactions/1.json
  def update
    if @bank_account_transaction.update(bank_account_transaction_params)
      render :show, status: :ok, location: @bank_account_transaction
    else
      render json: @bank_account_transaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bank_account_transactions/1
  # DELETE /bank_account_transactions/1.json
  def destroy
    @bank_account_transaction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_account_transaction
      @bank_account_transaction = BankAccountTransaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bank_account_transaction_params
      params.require(:bank_account_transaction).permit(:account_number, :ifsc_code)
    end
end
