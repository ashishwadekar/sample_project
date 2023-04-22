json.extract! payment, :id, :user_name, :password, :created_at, :updated_at
json.url payment_url(payment, format: :json)
