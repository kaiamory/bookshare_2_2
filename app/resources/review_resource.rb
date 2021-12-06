class ReviewResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :rating, :integer
  attribute :body, :string
  attribute :book_id, :integer

  # Direct associations

  belongs_to :user

  # Indirect associations

end
