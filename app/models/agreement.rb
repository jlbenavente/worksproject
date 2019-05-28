class Agreement < ApplicationRecord
	 belongs_to :user
	 belongs_to :joboffer
	 has_many :users
	 has_one :joboffer
end
