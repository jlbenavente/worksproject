class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.integer :speaker_one_id
      t.integer :speaker_two_id
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
