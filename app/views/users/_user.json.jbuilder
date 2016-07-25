json.extract! user, :id, :name, :login_id, :email, :comment, :enabled, :created_at, :updated_at
json.url user_url(user, format: :json)