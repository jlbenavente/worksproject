class Location < ApplicationRecord
	belongs_to :user, :optional => true
	has_one :joboffer
	has_one :user
end
