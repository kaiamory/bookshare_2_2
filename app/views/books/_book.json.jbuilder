json.extract! book, :id, :name, :author, :genre, :page_length, :user_id,
              :author_id, :book_cover, :created_at, :updated_at
json.url book_url(book, format: :json)
