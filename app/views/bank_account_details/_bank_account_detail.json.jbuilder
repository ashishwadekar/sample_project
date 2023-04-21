json.extract! bank_account_detail, :id, :account_no, :ifsc_code, :bank_name, :user_name, :created_at, :updated_at
json.url bank_account_detail_url(bank_account_detail, format: :json)
