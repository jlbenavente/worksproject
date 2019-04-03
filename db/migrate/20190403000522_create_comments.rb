class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :comment
      t.integer :price
      t.integer :user_id
      t.integer :joboffer_id

      t.timestamps
    end
  end
end
