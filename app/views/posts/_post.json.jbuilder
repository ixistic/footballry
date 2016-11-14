json.extract! post, :id, :title, :body, :topic_id, :post_type_id, :status, :created_by_id, :last_edited_by_id, :created_at, :updated_at
json.url topic_post_url(post, format: :json)