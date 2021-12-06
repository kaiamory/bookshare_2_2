class AddRecipientReferenceToRecommendations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :recommendations, :users, column: :sender_id
    add_index :recommendations, :sender_id
    change_column_null :recommendations, :sender_id, false
  end
end
