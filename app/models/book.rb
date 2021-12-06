class Book < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             dependent: :destroy

  # Indirect associations

  has_many   :users,
             through: :reviews,
             source: :user

  # Validations

  # Scopes

  def to_s
    name
  end
end
