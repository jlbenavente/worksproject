class Location < ApplicationRecord
	belongs_to :user
	has_one :joboffer
	has_one :user
end
