class ChangeIndexOnConversation < ActiveRecord::Migration[5.1]
  def change
    remove_index :conversations, :recipient_id
    remove_index :conversations, :sender_id

    add_index :conversations, :recipient_id
    add_index :conversations, :sender_id
    add_index :conversations, [:recipient_id, :sender_id], unique: true
  end
end
