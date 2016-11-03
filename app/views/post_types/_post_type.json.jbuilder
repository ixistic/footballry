json.extract! post_type, :id, :name, :created_by_id, :last_edited_by_id, :created_at, :updated_at
json.url post_type_url(post_type, format: :json)