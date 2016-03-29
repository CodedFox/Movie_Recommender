json.array!(@profiles) do |profile|
  json.extract! profile, :id, :age_range, :gender, :occupation, :user_id, :first_name, :last_name, :city, :province, :country, :picture
  json.url profile_url(profile, format: :json)
end
