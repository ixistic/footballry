json.extract! comment, :id, :message, :status, :created_by, :last_edited_by, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)