class UserDetailsController < ApplicationController
  before_action :set_user_detail, only: %i[ show update destroy ]

  # GET /user_details
  # GET /user_details.json
  def index
    @user_details = UserDetail.all
  end

  # GET /user_details/1
  # GET /user_details/1.json
  def show
  end

  # POST /user_details
  # POST /user_details.json
  def create
    @user_detail = UserDetail.new(user_detail_params)

    if @user_detail.save
      render :show, status: :created, location: @user_detail
    else
      render json: @user_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_details/1
  # PATCH/PUT /user_details/1.json
  def update
    if @user_detail.update(user_detail_params)
      render :show, status: :ok, location: @user_detail
    else
      render json: @user_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_details/1
  # DELETE /user_details/1.json
  def destroy
    @user_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_detail
      @user_detail = UserDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_detail_params
      params.require(:user_detail).permit(:Full_name, :Mobile_no, :Adress)
    end
end
