json.extract! post_type, :id, :name, :created_by, :last_edited_by, :created_at, :updated_at
json.url post_type_url(post_type, format: :json)