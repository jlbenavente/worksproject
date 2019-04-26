class AddJobofferIdToConversation < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :joboffer_id, :integer
  end
end
