json.extract! micro_post, :id, :content, :user_id, :created_at, :updated_at
json.url micro_post_url(micro_post, format: :json)
