json.extract! @unconference, :id, :name, :location, :created_at, :updated_at

json.url unconference_url(@unconference, format: :json)

