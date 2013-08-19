json.array!(@static_numbers) do |static_number|
  json.extract! static_number, :date, :title, :number
  json.url static_number_url(static_number, format: :json)
end
