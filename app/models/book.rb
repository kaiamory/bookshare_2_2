class Book < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  has_many   :author_writers,
             :class_name => "Author",
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :reviews,
             :source => :user

  # Validations

  # Scopes

  def to_s
    name
  end

end
