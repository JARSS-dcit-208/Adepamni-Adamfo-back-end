json.extract! dress, :name
json.image_url rails_blob_url(dress.image) if dress.image.attached?
json.url dress_url(dress, format: :json)
