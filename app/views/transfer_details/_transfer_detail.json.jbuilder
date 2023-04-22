json.extract! transfer_detail, :id, :recipient_name, :recipient_account_number, :amount, :created_at, :updated_at
json.url transfer_detail_url(transfer_detail, format: :json)
