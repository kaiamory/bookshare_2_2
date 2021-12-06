class Recommendation < ApplicationRecord
  # Direct associations

  belongs_to :recipient,
             :class_name => "User",
             :foreign_key => "sender_id"

  belongs_to :sender,
             :class_name => "User",
             :foreign_key => "body"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    created_at
  end

end
