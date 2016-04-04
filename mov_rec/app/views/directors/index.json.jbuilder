json.array!(@directors) do |director|
  json.extract! director, :id, :first_name, :last_name, :place_of_birth, :gender
  json.url director_url(director, format: :json)
end
