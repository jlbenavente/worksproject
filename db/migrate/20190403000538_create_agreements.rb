class CreateAgreements < ActiveRecord::Migration[5.2]
  def change
    create_table :agreements do |t|
      t.integer :final_price
      t.datetime :date
      t.boolean :payed?
      t.integer :user_id
      t.integer :joboffer_id

      t.timestamps
    end
  end
end
