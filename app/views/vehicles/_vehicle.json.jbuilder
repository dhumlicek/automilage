json.extract! vehicle, :id, :year, :make, :model, :color, :owned, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
