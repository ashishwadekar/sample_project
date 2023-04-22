class UserLoanDetailsController < ApplicationController
  before_action :set_user_loan_detail, only: %i[ show update destroy ]

  # GET /user_loan_details
  # GET /user_loan_details.json
  def index
    @user_loan_details = UserLoanDetail.all
  end

  # GET /user_loan_details/1
  # GET /user_loan_details/1.json
  def show
  end

  # POST /user_loan_details
  # POST /user_loan_details.json
  def create
    @user_loan_detail = UserLoanDetail.new(user_loan_detail_params)

    if @user_loan_detail.save
      render :show, status: :created, location: @user_loan_detail
    else
      render json: @user_loan_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_loan_details/1
  # PATCH/PUT /user_loan_details/1.json
  def update
    if @user_loan_detail.update(user_loan_detail_params)
      render :show, status: :ok, location: @user_loan_detail
    else
      render json: @user_loan_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_loan_details/1
  # DELETE /user_loan_details/1.json
  def destroy
    @user_loan_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_loan_detail
      @user_loan_detail = UserLoanDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_loan_detail_params
      params.require(:user_loan_detail).permit(:username, :bank_name, :in_debt)
    end
end
