json.extract! author, :id, :name, :book_id, :author_headshot, :created_at,
              :updated_at
json.url author_url(author, format: :json)
