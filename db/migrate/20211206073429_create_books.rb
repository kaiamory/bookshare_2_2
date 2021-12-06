class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :genre
      t.string :page_length
      t.integer :user_id
      t.integer :author_id

      t.timestamps
    end
  end
end
