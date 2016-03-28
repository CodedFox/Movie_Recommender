json.array!(@movie_ratings) do |movie_rating|
  json.extract! movie_rating, :id, :date_watched, :user_rating, :review, :user_id, :movie_id
  json.url movie_rating_url(movie_rating, format: :json)
end
