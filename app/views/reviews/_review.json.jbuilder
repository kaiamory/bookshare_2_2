json.extract! review, :id, :user_id, :rating, :body, :book_id, :created_at, :updated_at
json.url review_url(review, format: :json)
