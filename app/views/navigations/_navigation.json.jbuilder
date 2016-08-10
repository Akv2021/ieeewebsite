json.extract! navigation, :id, :name, :pos, :url, :created_at, :updated_at
json.url navigation_url(navigation, format: :json)