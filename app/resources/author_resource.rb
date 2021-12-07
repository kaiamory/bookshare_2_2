class AuthorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :book_id, :integer
  attribute :author_headshot, :string

  # Direct associations

  has_many :books

  # Indirect associations
end
