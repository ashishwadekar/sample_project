json.extract! debit_card, :id, :card_number, :card_name, :created_at, :updated_at
json.url debit_card_url(debit_card, format: :json)
