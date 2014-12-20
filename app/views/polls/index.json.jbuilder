json.array!(@polls) do |poll|
  json.extract! poll, :id, :source, :poller, :date, :population
  json.url poll_url(poll, format: :json)
end
