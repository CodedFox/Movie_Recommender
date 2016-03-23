json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :description, :date_released, :duration, :language, :subtitles, :dubbed, :country, :age_rating
  json.url movie_url(movie, format: :json)
end
