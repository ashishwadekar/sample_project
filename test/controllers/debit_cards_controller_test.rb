require "test_helper"

class DebitCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debit_card = debit_cards(:one)
  end

  test "should get index" do
    get debit_cards_url, as: :json
    assert_response :success
  end

  test "should create debit_card" do
    assert_difference("DebitCard.count") do
      post debit_cards_url, params: { debit_card: { card_name: @debit_card.card_name, card_number: @debit_card.card_number } }, as: :json
    end

    assert_response :created
  end

  test "should show debit_card" do
    get debit_card_url(@debit_card), as: :json
    assert_response :success
  end

  test "should update debit_card" do
    patch debit_card_url(@debit_card), params: { debit_card: { card_name: @debit_card.card_name, card_number: @debit_card.card_number } }, as: :json
    assert_response :success
  end

  test "should destroy debit_card" do
    assert_difference("DebitCard.count", -1) do
      delete debit_card_url(@debit_card), as: :json
    end

    assert_response :no_content
  end
end
