json.extract! user, :id, :login, :email, :password_digest, :remember_digest, :name, :birthdate, :created_at, :updated_at
json.url user_url(user, format: :json)