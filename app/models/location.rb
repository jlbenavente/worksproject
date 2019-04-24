class Location < ApplicationRecord
	has_one :joboffer
	has_one :user
end
