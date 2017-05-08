json.extract! @unconference, :id, :name, :location, :created_at, :updated_at

json.url unconference_url(@unconference, format: :json)

json.talks do
  json.array!(@unconference.talks) do |talk|
    json.title talk.title
    json.speaker_name talk.speaker_name
    json.start_time talk.start_time
    json.end_time talk.end_time
    json.url talk_url(talk, format: :json)
  end
end
