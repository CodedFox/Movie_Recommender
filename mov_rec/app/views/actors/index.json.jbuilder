json.array!(@actors) do |actor|
  json.extract! actor, :id, :first_name, :last_name, :date_of_birth, :place_of_birth, :gender
  json.url actor_url(actor, format: :json)
end
