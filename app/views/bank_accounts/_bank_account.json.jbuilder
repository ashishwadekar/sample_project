json.extract! bank_account, :id, :account_number, :ifsc_code, :created_at, :updated_at
json.url bank_account_url(bank_account, format: :json)
