json.extract! image, :id, :status, :image_url, :redacted_url, :created_at, :updated_at
json.url image_url(image, format: :json)
