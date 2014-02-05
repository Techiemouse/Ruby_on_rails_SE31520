json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :vehicle_reg, :annual_mileage, :vehicle_value, :parking_location, :policy_start_date
  json.url vehicle_url(vehicle, format: :json)
end
