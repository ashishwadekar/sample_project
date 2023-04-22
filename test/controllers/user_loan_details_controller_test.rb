require "test_helper"

class UserLoanDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_loan_detail = user_loan_details(:one)
  end

  test "should get index" do
    get user_loan_details_url, as: :json
    assert_response :success
  end

  test "should create user_loan_detail" do
    assert_difference("UserLoanDetail.count") do
      post user_loan_details_url, params: { user_loan_detail: { bank_name: @user_loan_detail.bank_name, in_debt: @user_loan_detail.in_debt, username: @user_loan_detail.username } }, as: :json
    end

    assert_response :created
  end

  test "should show user_loan_detail" do
    get user_loan_detail_url(@user_loan_detail), as: :json
    assert_response :success
  end

  test "should update user_loan_detail" do
    patch user_loan_detail_url(@user_loan_detail), params: { user_loan_detail: { bank_name: @user_loan_detail.bank_name, in_debt: @user_loan_detail.in_debt, username: @user_loan_detail.username } }, as: :json
    assert_response :success
  end

  test "should destroy user_loan_detail" do
    assert_difference("UserLoanDetail.count", -1) do
      delete user_loan_detail_url(@user_loan_detail), as: :json
    end

    assert_response :no_content
  end
end
