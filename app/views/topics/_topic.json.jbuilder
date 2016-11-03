json.extract! topic, :id, :title, :description, :created_by_id, :last_edited_by_id, :created_at, :updated_at
json.url topic_url(topic, format: :json)