class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :photo
      t.string :description
      t.integer :score
      t.integer :location_id
      t.integer :rol_id

      t.timestamps
    end
  end
end
