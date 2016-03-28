json.array!(@topics) do |topic|
  json.extract! topic, :id, :genre
  json.url topic_url(topic, format: :json)
end
