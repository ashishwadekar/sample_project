require "test_helper"

class TransferDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transfer_detail = transfer_details(:one)
  end

  test "should get index" do
    get transfer_details_url, as: :json
    assert_response :success
  end

  test "should create transfer_detail" do
    assert_difference("TransferDetail.count") do
      post transfer_details_url, params: { transfer_detail: { amount: @transfer_detail.amount, recipient_account_number: @transfer_detail.recipient_account_number, recipient_name: @transfer_detail.recipient_name } }, as: :json
    end

    assert_response :created
  end

  test "should show transfer_detail" do
    get transfer_detail_url(@transfer_detail), as: :json
    assert_response :success
  end

  test "should update transfer_detail" do
    patch transfer_detail_url(@transfer_detail), params: { transfer_detail: { amount: @transfer_detail.amount, recipient_account_number: @transfer_detail.recipient_account_number, recipient_name: @transfer_detail.recipient_name } }, as: :json
    assert_response :success
  end

  test "should destroy transfer_detail" do
    assert_difference("TransferDetail.count", -1) do
      delete transfer_detail_url(@transfer_detail), as: :json
    end

    assert_response :no_content
  end
end
