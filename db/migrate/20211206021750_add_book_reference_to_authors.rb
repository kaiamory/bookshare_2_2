class AddBookReferenceToAuthors < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :authors, :books
    add_index :authors, :book_id
    change_column_null :authors, :book_id, false
  end
end
