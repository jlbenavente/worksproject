class RemoveConversationIdFromJoboffer < ActiveRecord::Migration[5.2]
  def change
    remove_column :joboffers, :conversation_id, :integer
  end
end
