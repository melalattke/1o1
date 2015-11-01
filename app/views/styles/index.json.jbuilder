json.array!(@styles) do |style|
  json.extract! style, :id, :name, :time, :day, :difficulty
  json.url style_url(style, format: :json)
end
