json.array!(@events) do |event|
  json.extract! event, :id, :title
	json.start event.start_at
	json.end event.end_at
  json.url event_url(event)
end
