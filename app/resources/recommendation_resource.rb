class RecommendationResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :body, :string
  attribute :sender_id, :integer
  attribute :recipient_id, :integer

  # Direct associations

  belongs_to :recipient,
             resource: UserResource,
             foreign_key: :sender_id

  belongs_to :sender,
             resource: UserResource,
             foreign_key: :body

  # Indirect associations

end
