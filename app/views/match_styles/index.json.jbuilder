json.array!(@match_styles) do |match_style|
  json.extract! match_style, :id, :style_id, :item_id
  json.url match_style_url(match_style, format: :json)
end
