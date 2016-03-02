json.array!(@users) do |user|
  json.extract! user, :id, :name, :last_name, :age, :email, :notes
  json.url user_url(user, format: :json)
end
