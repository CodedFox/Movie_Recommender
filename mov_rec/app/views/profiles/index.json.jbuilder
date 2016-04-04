json.array!(@profiles) do |profile|
  json.extract! profile,  :id, :first_name, :last_name, :date_of_birth, :gender, :city, :province, :country, :occupation, :picture, :user_id
  json.url profile_url(profile, format: :json)
end
