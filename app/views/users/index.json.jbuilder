json.array!(@users) do |user|
  json.extract! user, :id, :username, :provider, :uid, :url, :role
  json.url user_url(user, format: :json)
end
