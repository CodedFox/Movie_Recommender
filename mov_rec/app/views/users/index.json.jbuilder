json.array!(@users) do |user|
  json.extract! user, :id, :date_of_birth, :email, :password, :user_type_id,
  json.url user_url(user, format: :json)
end
