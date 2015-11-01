json.array!(@match_skins) do |match_skin|
  json.extract! match_skin, :id, :Skins_id, :Items_id
  json.url match_skin_url(match_skin, format: :json)
end
