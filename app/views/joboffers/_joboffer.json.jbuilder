json.extract! joboffer, :id, :title, :description, :photo, :budget, :location_id, :skill_id, :start_date, :end_date, :user_id, :conversation_id, :created_at, :updated_at
json.url joboffer_url(joboffer, format: :json)
