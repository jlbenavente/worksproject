class Joboffer < ApplicationRecord
  belongs_to :user
  belongs_to :conversation
  belongs_to :location
  belongs_to :skill
  
  has_one :agreement
  has_many :comment
end
