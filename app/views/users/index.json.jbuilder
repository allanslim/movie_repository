json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :firstname, :string, :lastname, :role
  json.url user_url(user, format: :json)
end
