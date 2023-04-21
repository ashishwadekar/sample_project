json.extract! transfer, :id, :recipient_account_number, :recipient_name, :amount, :created_at, :updated_at
json.url transfer_url(transfer, format: :json)
