json.array!(@policies) do |policy|
  json.extract! policy, :policy_excess, :breakdown_cover, :windscreen_repair, :windscreen_cost
  json.url policy_url(policy, format: :json)
end
