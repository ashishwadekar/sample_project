require "test_helper"

class BankAccountDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank_account_detail = bank_account_details(:one)
  end

  test "should get index" do
    get bank_account_details_url, as: :json
    assert_response :success
  end

  test "should create bank_account_detail" do
    assert_difference("BankAccountDetail.count") do
      post bank_account_details_url, params: { bank_account_detail: { account_no: @bank_account_detail.account_no, bank_name: @bank_account_detail.bank_name, ifsc_code: @bank_account_detail.ifsc_code, user_name: @bank_account_detail.user_name } }, as: :json
    end

    assert_response :created
  end

  test "should show bank_account_detail" do
    get bank_account_detail_url(@bank_account_detail), as: :json
    assert_response :success
  end

  test "should update bank_account_detail" do
    patch bank_account_detail_url(@bank_account_detail), params: { bank_account_detail: { account_no: @bank_account_detail.account_no, bank_name: @bank_account_detail.bank_name, ifsc_code: @bank_account_detail.ifsc_code, user_name: @bank_account_detail.user_name } }, as: :json
    assert_response :success
  end

  test "should destroy bank_account_detail" do
    assert_difference("BankAccountDetail.count", -1) do
      delete bank_account_detail_url(@bank_account_detail), as: :json
    end

    assert_response :no_content
  end
end
