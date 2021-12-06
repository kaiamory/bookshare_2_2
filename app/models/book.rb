class Book < ApplicationRecord
  # Direct associations

  has_many   :author_writers,
             :class_name => "Author",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
