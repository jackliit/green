json.array!(@people) do |person|
  json.extract! person, :name, :email, :phone, :sn, :photo, :idCard, :company_id
  json.url person_url(person, format: :json)
end
