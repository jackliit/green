json.array!(@driver_meals) do |driver_meal|
  json.extract! driver_meal, :dealer, :carSn, :mealAllowance, :driver_id, :party_id
  json.url driver_meal_url(driver_meal, format: :json)
end
