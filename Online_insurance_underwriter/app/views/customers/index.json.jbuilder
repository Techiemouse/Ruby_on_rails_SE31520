json.array!(@customers) do |customer|
  json.extract! customer, :title, :forename, :surname, :phone
  json.url customer_url(customer, format: :json)
end
