json.extract! facebook, :id, :title, :content, :image, :created_at, :updated_at
json.url facebook_url(facebook, format: :json)
