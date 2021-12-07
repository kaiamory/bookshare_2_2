class Book < ApplicationRecord
  mount_uploader :book_cover, BookCoverUploader

  # Direct associations

  belongs_to :author_writer,
             class_name: "Author",
             foreign_key: "author_id"

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
