json.extract! talk, :id, :title, :speaker_name, :start_time, :end_time, :unconference_id, :created_at, :updated_at
json.url talk_url(talk, format: :json)
