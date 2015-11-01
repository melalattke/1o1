json.array!(@clients) do |client|
  json.extract! client, :id, :name, :age, :address
  json.url client_url(client, format: :json)
end
