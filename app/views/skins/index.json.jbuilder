json.array!(@skins) do |skin|
  json.extract! skin, :id, :name
  json.url skin_url(skin, format: :json)
end
