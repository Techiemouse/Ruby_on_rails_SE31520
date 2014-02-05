json.array!(@claims) do |claim|
  json.extract! claim, :date_of_incident, :value, :type_of_incident, :description
  json.url claim_url(claim, format: :json)
end
