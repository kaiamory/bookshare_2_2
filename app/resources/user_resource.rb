class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :username, :string

  # Direct associations

  has_many   :book_recommendations,
             resource: RecommendationResource,
             foreign_key: :sender_id

  has_many   :recommendations,
             foreign_key: :body

  has_many   :reviews

  # Indirect associations

  many_to_many :books
end
