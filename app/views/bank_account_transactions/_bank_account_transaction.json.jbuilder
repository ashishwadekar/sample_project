json.extract! bank_account_transaction, :id, :account_number, :ifsc_code, :created_at, :updated_at
json.url bank_account_transaction_url(bank_account_transaction, format: :json)
