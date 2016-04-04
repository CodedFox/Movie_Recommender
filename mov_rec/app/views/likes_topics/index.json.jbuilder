json.array!(@likes_topics) do |likes_topic|
  json.extract! likes_topic, :id, :profile_id, :topic_id
  json.url likes_topic_url(likes_topic, format: :json)
end
