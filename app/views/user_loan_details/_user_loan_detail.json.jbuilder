json.extract! user_loan_detail, :id, :username, :bank_name, :in_debt, :created_at, :updated_at
json.url user_loan_detail_url(user_loan_detail, format: :json)
