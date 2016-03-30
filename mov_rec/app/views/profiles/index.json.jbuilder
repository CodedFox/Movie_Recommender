json.array!(@profiles) do |profile|
  json.extract! profile,  :id, :first_name, :last_name, :age_range, :gender, :city, :province, :country, :occupation, :picture, :user_id
  json.url profile_url(profile, format: :json)
end
