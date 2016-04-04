json.array!(@topics) do |topic|
  json.extract! topic, :id, :genre_name
  json.url topic_url(topic, format: :json)
end
