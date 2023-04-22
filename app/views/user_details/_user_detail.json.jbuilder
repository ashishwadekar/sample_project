json.extract! user_detail, :id, :Full_name, :Mobile_no, :Adress, :created_at, :updated_at
json.url user_detail_url(user_detail, format: :json)
