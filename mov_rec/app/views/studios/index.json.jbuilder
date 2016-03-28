json.array!(@studios) do |studio|
  json.extract! studio, :id, :studio_name, :country
  json.url studio_url(studio, format: :json)
end
