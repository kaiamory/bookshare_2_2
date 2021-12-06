class AddSenderReferenceToRecommendations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :recommendations, :users, column: :body
    add_index :recommendations, :body
    change_column_null :recommendations, :body, false
  end
end
