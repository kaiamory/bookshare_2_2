class Author < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :book

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end
end
