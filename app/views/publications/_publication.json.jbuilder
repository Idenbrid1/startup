json.extract! publication, :id, :title, :publication_date, :body, :created_at, :updated_at
json.url publication_url(publication, format: :json)
