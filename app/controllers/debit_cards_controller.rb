class DebitCardsController < ApplicationController
  before_action :set_debit_card, only: %i[ show update destroy ]

  # GET /debit_cards
  # GET /debit_cards.json
  def index
    @debit_cards = DebitCard.all
  end

  # GET /debit_cards/1
  # GET /debit_cards/1.json
  def show
  end

  # POST /debit_cards
  # POST /debit_cards.json
  def create
    @debit_card = DebitCard.new(debit_card_params)

    if @debit_card.save
      render :show, status: :created, location: @debit_card
    else
      render json: @debit_card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /debit_cards/1
  # PATCH/PUT /debit_cards/1.json
  def update
    if @debit_card.update(debit_card_params)
      render :show, status: :ok, location: @debit_card
    else
      render json: @debit_card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /debit_cards/1
  # DELETE /debit_cards/1.json
  def destroy
    @debit_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debit_card
      @debit_card = DebitCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def debit_card_params
      params.require(:debit_card).permit(:card_number, :card_name)
    end
end
