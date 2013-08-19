json.array!(@rents) do |rent|
  json.extract! rent, :place, :rentStart, :rentEnd, :fullday, :party_id
  json.url rent_url(rent, format: :json)
end
