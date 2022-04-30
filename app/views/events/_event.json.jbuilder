json.extract! event, :id, :title, :mode, :created_at, :updated_at
json.url event_url(event, format: :json)
