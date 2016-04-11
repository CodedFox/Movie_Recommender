json.array!(@movie_casts) do |movie_cast|
  json.extract! movie_cast, :id
  json.url movie_cast_url(movie_cast, format: :json)
end
