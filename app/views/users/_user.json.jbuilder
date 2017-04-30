json.extract! user, :id, :name, :lastName, :email, :telephone, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
