json.extract! event, :id, :name, :date, :timing, :venue, :imageurl, :created_at, :updated_at
json.url event_url(event, format: :json)