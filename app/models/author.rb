class Author < ApplicationRecord
  # Direct associations

  belongs_to :book

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
