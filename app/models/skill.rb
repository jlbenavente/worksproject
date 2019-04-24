class Skill < ApplicationRecord
	belongs_to :user
	has_one :joboffer
end
