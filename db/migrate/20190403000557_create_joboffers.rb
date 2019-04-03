class CreateJoboffers < ActiveRecord::Migration[5.2]
  def change
    create_table :joboffers do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.datetime :start_date
      t.datetime :end_date
      t.integer :budget
      t.integer :location_id
      t.integer :skill_id
      t.integer :user_id
      t.integer :conversation_id

      t.timestamps
    end
  end
end
