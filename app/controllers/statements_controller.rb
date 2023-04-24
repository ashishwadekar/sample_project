class StatementsController < ApplicationController
  before_action :set_statement, only: %i[ show update destroy ]

  # GET /statements
  # GET /statements.json
  def index
    @statements = Statement.all
  end

  # GET /statements/1
  # GET /statements/1.json
  def show
  end

  # POST /statements
  # POST /statements.json
  def create
    @statement = Statement.new(statement_params)

    if @statement.save
      render :show, status: :created, location: @statement
    else
      render json: @statement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /statements/1
  # PATCH/PUT /statements/1.json
  def update
    if @statement.update(statement_params)
      render :show, status: :ok, location: @statement
    else
      render json: @statement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /statements/1
  # DELETE /statements/1.json
  def destroy
    @statement.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statement
      @statement = Statement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def statement_params
      params.require(:statement).permit(:opening_balance)
    end
end
