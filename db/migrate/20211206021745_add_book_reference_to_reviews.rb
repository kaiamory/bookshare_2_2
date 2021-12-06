class AddBookReferenceToReviews < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :reviews, :books
    add_index :reviews, :book_id
    change_column_null :reviews, :book_id, false
  end
end
